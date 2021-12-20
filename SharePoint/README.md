# Microsoft SharePoint

## SharePoint Online Management Shell

Many solutions require the SharePoint Online Management Shell.

- Download the [SharePoint Online Management Shell](https://www.microsoft.com/en-us/download/details.aspx?id=35588).
- Install
- Run as admin.
- Connect to a SharePoint tenant using the `Connect-SPOService` cmdlet.

```PowerShell
Connect-SPOService -Url https://contoso-admin.sharepoint.com
```

## Execution Policies

File <<file name> cannot be loaded. The file <<file name>> is not
digitally signed. You cannot run this script on the current system. For more information about running scripts and setting execution policy

```PowerShell
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
```
