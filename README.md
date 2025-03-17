# Cold Turkey Blocker Pro

```powershell
# install dependencies
winget install Git.Git SQLite.SQLite --disable-interactivity --accept-package-agreements --accept-source-agreements

# clone repo
git clone https://github.com/operator-name/cold-turkey-blocker-pro
cd cold-turkey-blocker-pro

# apply pro, prints "pro" on success
Get-Content .\cold-turkey-pro.sql | sqlite3 "C:\ProgramData\Cold Turkey\data-app.db"

# restart cold turkey blocker pro
$proc = Get-Process "Cold Turkey Blocker"
$exe = $proc | Select-Object -Expand Path
$proc | Stop-Process -Force
Start-Process -FilePath $exe
```
