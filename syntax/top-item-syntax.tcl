set title "top-item-def"
set spec {
    stack
        {line NAME {''} TITLE {''}}
        {or
            /mandatory
            /optional
            { line
                /case
                { loop /item "/" }
                { loop { line (indent) INT : { or /mandatory /optional /absent} (unindent)} {} }
            }
        }
        {line /definition TEXT }
        {line item-def}
        {opt /remark TEXT }
}
