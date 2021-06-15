pageextension 50100 "PTE Case Card" extends "PVS Case Card"
{
    layout
    {
        addlast(GeneralGroup)
        {
            field(ShowOnlyOrders; ShowOnlyOrders)
            {
                ApplicationArea = All;
                trigger OnValidate()
                begin
                    CurrPage.SUB_JOBS.Page.SetShowOnlyOrders(ShowOnlyOrders);
                end;
            }
        }
    }


    var
        ShowOnlyOrders: Boolean;
}