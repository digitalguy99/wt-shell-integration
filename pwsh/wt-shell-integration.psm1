$currentPrompt = (Get-Item function:prompt).ScriptBlock

$Global:__LastHistoryId = -1

function Global:__Terminal-Get-LastExitCode {
    if ($? -eq $True) {
        return 0
    }
    $LastHistoryEntry = Get-History -Count 1
    $IsPowerShellError = $Error[0].InvocationInfo.HistoryId -eq $LastHistoryEntry.Id
    if ($IsPowerShellError) {
        return -1
    }
    return $LastExitCode
}

function prompt {
    # First, emit a mark for the _end_ of the previous command.
    $gle = __Terminal-Get-LastExitCode
    $LastHistoryEntry = Get-History -Count 1
    # Skip finishing the command if the first command has not yet started
    if ($Global:__LastHistoryId -ne -1) {
        if ($LastHistoryEntry.Id -eq $Global:__LastHistoryId) {
            # Don't provide a command line or exit code if there was no history entry (eg. ctrl+c, enter on no command)
            $out += "$([char]0x1b)]133;D$([char]0x07)"
        } else {
            $out += "$([char]0x1b)]133;D;$gle$([char]0x07)"
        }
    }
    $loc = $executionContext.SessionState.Path.CurrentLocation
    # Prompt started
    $out += "$([char]0x1b)]133;A$([char]07)"
    # CWD
    $out += "$([char]0x1b)]9;9;`"$loc`"$([char]07)"
    # Get the current prompt
    $currentPromptText = & $currentPrompt
    # Combine them with your custom prompt
    $out += "$currentPromptText"
    # Prompt ended, Command started
    $out += "$([char]0x1b)]133;B$([char]07)"
    $Global:__LastHistoryId = $LastHistoryEntry.Id
    return $out
}