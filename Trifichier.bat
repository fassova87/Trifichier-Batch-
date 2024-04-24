@echo off
:: Emplacement des fichier a trier--------------------------------------------------------------------------------
set "SourceFolder=C:\Users\steem\Downloads"
:: Emplacement du rangement des fichier---------------------------------------------------------------------------
set "DestinationFolder=C:\Users\steem\Downloads"
::Partie Programation Ne Pas Toucher -----------------------------------------------------------------------------
for %%f in ("%SourceFolder%\*") do (
    if not exist "%DestinationFolder%" mkdir "%DestinationFolder%"
    if "%%~xf"==".docx" (
        if not exist "%DestinationFolder%\Word" mkdir "%DestinationFolder%\Word"
        move "%%f" "%DestinationFolder%\Word"
    ) else if "%%~xf"==".doc" (
        if not exist "%DestinationFolder%\Word" mkdir "%DestinationFolder%\Word"
        move "%%f" "%DestinationFolder%\Word" 
    ) else if "%%~xf"==".xls" (
        if not exist "%DestinationFolder%\Excel" mkdir "%DestinationFolder%\Excel"
        move "%%f" "%DestinationFolder%\Excel"
    ) else if "%%~xf"==".xlsx" (
        if not exist "%DestinationFolder%\Excel" mkdir "%DestinationFolder%\Excel"
        move "%%f" "%DestinationFolder%\Excel"
    ) else if "%%~xf"==".pdf" (
        if not exist "%DestinationFolder%\Pdf" mkdir "%DestinationFolder%\Pdf"
        move "%%f" "%DestinationFolder%\Pdf"
    ) else if "%%~xf"==".zip" (
        if not exist "%DestinationFolder%\Archive ZIP ou RAR" mkdir "%DestinationFolder%\Archive ZIP ou RAR"
        move "%%f" "%DestinationFolder%\Archive ZIP ou RAR"
    ) else if "%%~xf"==".ppt" (
        if not exist "%DestinationFolder%\Powerpoint" mkdir "%DestinationFolder%\Powerpoint"
        move "%%f" "%DestinationFolder%\Powerpoint"
    ) else if "%%~xf"==".pptx" (
        if not exist "%DestinationFolder%\Powerpoint" mkdir "%DestinationFolder%\Powerpoint"
        move "%%f" "%DestinationFolder%\Powerpoint"
    ) else if "%%~xf"==".exe" (
        if not exist "%DestinationFolder%\Executables" mkdir "%DestinationFolder%\Executables"
        move "%%f" "%DestinationFolder%\Executables"
    ) else if "%%~xf"==".mp1" (
        if not exist "%DestinationFolder%\Multimedia" mkdir "%DestinationFolder%\Multimedia"
        move "%%f" "%DestinationFolder%\Multimedia"
    ) else if "%%~xf"==".mp2" (
        if not exist "%DestinationFolder%\Multimedia" mkdir "%DestinationFolder%\Multimedia"
        move "%%f" "%DestinationFolder%\Multimedia"
    ) else if "%%~xf"==".mp3" (
        if not exist "%DestinationFolder%\Multimedia" mkdir "%DestinationFolder%\Multimedia"
        move "%%f" "%DestinationFolder%\Multimedia"
    ) else if "%%~xf"==".mp4" (
        if not exist "%DestinationFolder%\Multimedia" mkdir "%DestinationFolder%\Multimedia"
        move "%%f" "%DestinationFolder%\Multimedia"
    ) else if "%%~xf"==".png" (
        if not exist "%DestinationFolder%\Image" mkdir "%DestinationFolder%\Image"
        move "%%f" "%DestinationFolder%\Image"
    ) else if "%%~xf"==".jpg" (
        if not exist "%DestinationFolder%\Image" mkdir "%DestinationFolder%\Image"
        move "%%f" "%DestinationFolder%\Image"
    ) else if "%%~xf"==".jpeg" (
        if not exist "%DestinationFolder%\Image" mkdir "%DestinationFolder%\Image"
        move "%%f" "%DestinationFolder%\Image"
    ) else if "%%~xf"==".txt" (
        if not exist "%DestinationFolder%\Texte" mkdir "%DestinationFolder%\Texte"
        move "%%f" "%DestinationFolder%\Texte"
    ) else if "%%~xf"==".rar" (
        if not exist "%DestinationFolder%\Archive ZIP ou RAR" mkdir "%DestinationFolder%\Archive ZIP ou RAR"
        move "%%f" "%DestinationFolder%\Archive ZIP ou RAR"
    ) else if "%%~xf"==".bat" (
        if not exist "%DestinationFolder%\Batch" mkdir "%DestinationFolder%\Batch"
        move "%%f" "%DestinationFolder%\Batch"
    ) else (
        :: Quand l'extention n'est pas dans la list va crée un fichier sous le nom de l'extention dans un fichier "Autre"
        if not exist "%DestinationFolder%\Autre\%%~xf" mkdir "%DestinationFolder%\Autre\%%~xf"
        move "%%f" "%DestinationFolder%\Autre\%%~xf"
    )
)
