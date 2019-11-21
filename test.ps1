$Creds = @{
           username = "mdabrar1"
           password = "@burosE4"
           }

$HeadersToken = $null

# Api Call to get access token
$Response = Invoke-RestMethod "https://anypoint.mulesoft.com/accounts/login" -Method Post -Body $Creds -Headers $HeadersToken
$Token = $Response.access_token
Write-Output $Token
#Write-Output $token

$HeadersApi = @{"Authorization"="Bearer $Token"; "X-ANYPNT-ENV-ID"="8cad4662-1dbe-4712-b89a-9bdf40c65e2e"}

$GetApi = Invoke-RestMethod "https://anypoint.mulesoft.com/cloudhub/api/v2/applications" -Method Get -Headers $HeadersApi -ContentType 'application/json' -ErrorAction SilentlyContinue

Write-Output $GetApi
#echo $GetApi


#8c2e7f0b-b827-4228-a54f-ac655f2f4646

#8cad4662-1dbe-4712-b89a-9bdf40c65e2e - sandbox id
#8cad4662-1dbe-4712-b89a-9bdf40c65e2e - sandbox id
#8cad4662-1dbe-4712-b89a-9bdf40c65e2e - sandbox id