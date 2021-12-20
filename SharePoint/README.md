# Microsoft SharePoint

## SharePoint Online Management Shell

Many solutions require the SharePoint Online Management Shell.

- Download the SharePoint Online Management Shell](https://www.microsoft.com/en-us/download/details.aspx?id=35588).
- Install
- Run as admin.
- Connect to a SharePoint tenant using the `Connect-SPOService` cmdlet.

```PowerShell
Connect-SPOService -Url https://contoso-admin.sharepoint.com
```
