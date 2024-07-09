report 65400 "All Books List Report"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = "All Books List Report.rdl";
    Caption = 'All Books List Report';
    PreviewMode = PrintLayout;
    
    dataset
    {
        dataitem(Book;Book)
        {
            column(Author_Book; Author)
            {
            }
            column(BookCategory_Book; "Book Category")
            {
            }
            column(BookID_Book; "Book ID")
            {
            }
            column(BookPrice_Book; "Book Price")
            {
            }
            column(ISBNNumber_Book; "ISBN Number")
            {
            }
            column(Language_Book; Language)
            {
            }
            column(PublicationDate_Book; "Publication Date")
            {
            }
            column(Publisher_Book; Publisher)
            {
            }
            column(Title_Book; Title)
            {
            }
        }
    }
    
    rendering
    {
        layout("All Books List Report.rdl")
        {
            Type = RDLC;
            LayoutFile = 'All Books List Report.rdl';
        }
    }
    
    var
        myInt: Integer;
}