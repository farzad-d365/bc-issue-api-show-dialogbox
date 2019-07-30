
# Situation:

basically I extend the item table and add a dummy field over there (called MyField1)
then I create a new page api over the items table which include my new field and also 2 extra fields which are called :

```sh
"Gen. Prod. Posting Group"
"Inventory Posting Group"
```
 
**Notice:** 
- those fields are provided by microsoft in the "items" table, I just added tem to the api page.
- the source code is in the src folder.


**Problem**
now if I call the api to insert a new row like the blow:

**Request URL**
[http://pou1073:7048/NAV/api/bwg/apigroup1/beta/companies(1b8d4e1a-577a-4831-b8aa-e6097e9f3887)/items(9ae23836-5945-4133-bb8a-316cc36553e0)][PlDb]


**Method:** PATCH

 **Body:**
```sh
{"id":"9ae23836-5945-4133-bb8a-316cc36553e0","genProdPostingGroup":"FRUIT"}
```

 

then I get the below error:

System.Net.Http.HttpRequestException: 'Response status code does not indicate success: 400 (**Microsoft Dynamics 365 Business Central Data Services attempted to issue a client callback to show a confirmation dialog box: If you change Gen. Prod. Posting Group it may affect existing production orders. Do you want to change Gen. Prod. Posting Group?** (Table 27 Item). Client callbacks are not supported on Microsoft Dynamics 365 Business Central Data Services.).'

