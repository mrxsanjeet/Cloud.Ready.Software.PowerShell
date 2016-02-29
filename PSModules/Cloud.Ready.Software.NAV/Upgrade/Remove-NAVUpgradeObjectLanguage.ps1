﻿Function Remove-NAVUpgradeObjectLanguage
{
    [CmdLetBinding()]
    param(
        [String] $Source,
        [String] $WorkingFolder,
        [String[]] $Languages
    )
    
    $FileObject = get-item $Source -ErrorAction Stop
    $ObjectsWithoutLanguages = (join-path $WorkingFolder "$($FileObject.BaseName)_WithoutLanguages.txt")

        
    return $ObjectsWithoutLanguages    
}