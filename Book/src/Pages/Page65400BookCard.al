page 65400 "Book Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Book;

    layout
    {
        area(Content)
        {
            group(BookDetails)
            {
                field("Book ID"; Rec."Book ID")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    ToolTip = 'Book ID';
                }
                field("ISBN Number"; Rec."ISBN Number")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    ToolTip = 'ISBN Number';
                    trigger OnValidate()
                    var
                        ISBNValidation: Codeunit BookISBNValidation;
                    begin
                        if not ISBNValidation.validateISBNNumber(rec."ISBN Number") then
                            Error('Invalid ISBN number');
                    end;
                }
                field("Book Category"; Rec."Book Category")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    ToolTip = 'Book Category';
                }
                field("Book Price"; Rec."Book Price")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    ToolTip = 'Book Price';
                }
                field(Publisher; Rec.Publisher)
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    ToolTip = 'Publisher';
                }
                field(Title; Rec.Title)
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    ToolTip = 'Title';
                }
                field(Language; Rec.Language)
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    ToolTip = 'Language';
                }
                field(Author; Rec.Author)
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    ToolTip = 'Author';
                }
                field("Publication Date"; Rec."Publication Date")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    ToolTip = 'Publication Date';

                }
            }
        }
    }

    // actions
    // {
    //     area(Processing)
    //     {
    //         action(ActionName)
    //         {
    //             ApplicationArea = All;

    //             trigger OnAction()
    //             begin

    //             end;
    //         }
    //     }
    // }

    // var
    //     myInt: Integer;
}