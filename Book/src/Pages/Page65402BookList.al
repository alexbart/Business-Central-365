page 65402 "Book Details List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Book;
    
    layout
    {
        area(Content)
        {
            repeater("Book Details List")
            {

                field(Author; Rec.Author)
                {
                    ToolTip = 'Author';
                }
                field("Book Category"; Rec."Book Category")
                {
                    ToolTip = 'Book Category';
                }
                field("Book ID"; Rec."Book ID")
                {
                    ToolTip = 'Book ID';
                    TableRelation = Book."Book ID";
                }
                field("Book Price"; Rec."Book Price")
                {
                    ToolTip = 'Book Price';
                }
                field("ISBN Number"; Rec."ISBN Number")
                {
                    ToolTip = 'ISBN Number';
                }
                field(Language; Rec.Language)
                {
                    ToolTip = 'Language';
                }
                field("Publication Date"; Rec."Publication Date")
                {
                    ToolTip = 'Publication Date';
                }
                field(Publisher; Rec.Publisher)
                {
                    ToolTip = 'Publisher';
                }
                field(Title; Rec.Title)
                {
                    ToolTip = 'Title';
                }
            }
        }
        // area(Factboxes)
        // {
            
        // }
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
}