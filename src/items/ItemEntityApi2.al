
page 50109 "Items BWG"
{
    PageType = API;
    Caption = 'Items Entity';
    APIPublisher = 'bwg';
    APIGroup = 'apigroup1';
    APIVersion = 'beta';
    EntityName = 'item';
    EntitySetName = 'items';
    SourceTable = item;
    DelayedInsert = true;
    ODataKeyFields = Id;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(MyField1; MyField1)
                {
                    Caption = 'MyField1';
                }

                // ###################################
                field(id; Id)
                {
                }
                field(number; "No.")
                {
                }
                field(displayName; Description)
                {
                }
                field(type; Type)
                {
                }
                field(itemCategoryId; "Item Category Id")
                {
                }
                field(itemCategoryCode; "Item Category Code")
                {
                }
                field(blocked; Blocked)
                {
                }


            }
            field(gtin; GTIN)
            {
            }


            field(unitPrice; "Unit Price")
            {
            }
            field(priceIncludesTax; "Price Includes VAT")
            {
            }
            field(unitCost; "Unit Cost")
            {
            }
            field(taxGroupId; "Tax Group Id")
            {
            }
            field(taxGroupCode; "Tax Group Code")
            {
            }
            field(lastModifiedDateTime; "Last DateTime Modified")
            {
            }
            field("genProdPostingGroup"; "Gen. Prod. Posting Group")
            {

            }

            field("inventoryPostingGroup"; "Inventory Posting Group") { }


            // ######################################
        }
    }

    trigger OnInsertRecord(BelowxRec: Boolean): Boolean
    begin
        Insert(true);

        Modify(true);
        exit(false);
    end;

    trigger OnModifyRecord(): Boolean
    var
        theRow: Record Item;
    begin
        theRow.SETRANGE(Id, Id);
        theRow.FINDFIRST;

        // any business logic here
    end;


    trigger OnDeleteRecord(): Boolean
    begin
        Delete(true);
        exit(false);
    end;
}



