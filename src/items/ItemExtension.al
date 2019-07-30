tableextension 50110 ItemsExtension extends Item
{
    fields
    {
        // Add changes to table fields here

        field(201; MyField1; Text[50])
        {
            Caption = 'My field #1';
        }
    }
}


pageextension 50106 ItemCardPageExtension extends "Item Card"
{
    layout
    {
        // Add changes to page layout here
        addlast(Item)
        {
            field(MyField1; MyField1)
            {
                Caption = 'My field #1';
            }
        }
    }
}

pageextension 50107 ItemListPageExtension extends "Item List"
{
    layout
    {
        // Add changes to page layout here
        addlast(Control1)
        {
            field(MyField1; MyField1)
            {
                Caption = 'My field #1';
            }
        }
    }
}




