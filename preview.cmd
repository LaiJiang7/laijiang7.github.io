@echo off
setlocal
cd /d "%~dp0"

rem Prefer the dedicated Ruby+Devkit used for this website preview.
set "ACADEMIC_RUBY_BIN=%LOCALAPPDATA%\AcademicPagesRuby33\bin"
if not exist "%ACADEMIC_RUBY_BIN%\ruby.exe" set "ACADEMIC_RUBY_BIN=%~dp0..\.local-tools\rubyinstaller-3.3.12-1-x64\bin"
if not exist "%ACADEMIC_RUBY_BIN%\ruby.exe" (
  echo Ruby was not found. Install RubyInstaller or restore the workspace runtime.
  pause
  exit /b 1
)
set "PATH=%ACADEMIC_RUBY_BIN%;%PATH%"

call "%ACADEMIC_RUBY_BIN%\bundle.bat" config set --local path vendor/bundle
if errorlevel 1 exit /b 1
call "%ACADEMIC_RUBY_BIN%\bundle.bat" check >nul 2>nul
if errorlevel 1 (
  echo Installing the website dependencies. This requires an internet connection.
  call "%ACADEMIC_RUBY_BIN%\bundle.bat" install
  if errorlevel 1 (
    pause
    exit /b 1
  )
)

echo.
echo Open http://127.0.0.1:4000 in your browser.
echo Save a page or stylesheet to rebuild and refresh it automatically.
echo After changing _config.yml, press Ctrl+C and run this command again.
echo Keep this terminal open while editing. Press Ctrl+C to stop the preview.
echo.
call "%ACADEMIC_RUBY_BIN%\bundle.bat" exec jekyll serve --livereload --host 127.0.0.1 --port 4000 --force_polling
