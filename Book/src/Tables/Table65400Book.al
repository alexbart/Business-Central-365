table 65400 Book
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Book ID"; Code[20])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(2; "ISBN Number"; Text[20])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(3; "Title"; Text[50])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(4; "Author"; Text[50])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(5; "Book Price"; Decimal)
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(6; "Publication Date"; Date)
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(7; "Language"; Text[30])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(8; "Book Category"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = Fiction,NonFiction,Science,History,Mathematics,Technology,Art,Music,Health,Travel,Gardening,Cooking,Film;
            NotBlank = true;
        }
        field(9; Publisher; Text[250])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
    }

    keys
    {
        key(PK; "Book ID")
        {
            Clustered = true;
        }
    }

}