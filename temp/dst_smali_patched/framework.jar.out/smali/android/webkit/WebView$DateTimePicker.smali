.class Landroid/webkit/WebView$DateTimePicker;
.super Landroid/app/Dialog;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DateTimePicker"
.end annotation


# instance fields
.field private mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mDay:I

.field private mMonth:I

.field private mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

.field private mYear:I

.field private mdatetime:I

.field private mhour:I

.field private mminute:I

.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    iput-object p1, p0, Landroid/webkit/WebView$DateTimePicker;->this$0:Landroid/webkit/WebView;

    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/webkit/WebView$DateTimePicker$1;

    invoke-direct {v0, p0}, Landroid/webkit/WebView$DateTimePicker$1;-><init>(Landroid/webkit/WebView$DateTimePicker;)V

    iput-object v0, p0, Landroid/webkit/WebView$DateTimePicker;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    new-instance v0, Landroid/webkit/WebView$DateTimePicker$2;

    invoke-direct {v0, p0}, Landroid/webkit/WebView$DateTimePicker$2;-><init>(Landroid/webkit/WebView$DateTimePicker;)V

    iput-object v0, p0, Landroid/webkit/WebView$DateTimePicker;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    return-void
.end method

.method static synthetic access$1902(Landroid/webkit/WebView$DateTimePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Landroid/webkit/WebView$DateTimePicker;->mYear:I

    return p1
.end method

.method static synthetic access$2002(Landroid/webkit/WebView$DateTimePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Landroid/webkit/WebView$DateTimePicker;->mMonth:I

    return p1
.end method

.method static synthetic access$2102(Landroid/webkit/WebView$DateTimePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Landroid/webkit/WebView$DateTimePicker;->mDay:I

    return p1
.end method

.method static synthetic access$2200(Landroid/webkit/WebView$DateTimePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView$DateTimePicker;->updateDate()V

    return-void
.end method

.method static synthetic access$2302(Landroid/webkit/WebView$DateTimePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Landroid/webkit/WebView$DateTimePicker;->mhour:I

    return p1
.end method

.method static synthetic access$2402(Landroid/webkit/WebView$DateTimePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Landroid/webkit/WebView$DateTimePicker;->mminute:I

    return p1
.end method

.method static synthetic access$2500(Landroid/webkit/WebView$DateTimePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView$DateTimePicker;->updatetime()V

    return-void
.end method

.method static synthetic access$2700(Landroid/webkit/WebView$DateTimePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView$DateTimePicker;->clear()V

    return-void
.end method

.method private clear()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/webkit/WebView$DateTimePicker;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v0}, Landroid/webkit/WebView;->access$1800(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .parameter "id"

    .prologue
    const/4 v7, -0x2

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v2, p0, Landroid/webkit/WebView$DateTimePicker;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/webkit/WebView;->access$2600(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/WebView$DateTimePicker;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v3, p0, Landroid/webkit/WebView$DateTimePicker;->mYear:I

    iget v4, p0, Landroid/webkit/WebView$DateTimePicker;->mMonth:I

    iget v5, p0, Landroid/webkit/WebView$DateTimePicker;->mDay:I

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .local v0, dpdialog:Landroid/app/DatePickerDialog;
    new-instance v2, Landroid/webkit/WebView$DateTimePicker$3;

    invoke-direct {v2, p0}, Landroid/webkit/WebView$DateTimePicker$3;-><init>(Landroid/webkit/WebView$DateTimePicker;)V

    invoke-virtual {v0, v2}, Landroid/app/DatePickerDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const-string v2, "Clear"

    new-instance v3, Landroid/webkit/WebView$DateTimePicker$4;

    invoke-direct {v3, p0}, Landroid/webkit/WebView$DateTimePicker$4;-><init>(Landroid/webkit/WebView$DateTimePicker;)V

    invoke-virtual {v0, v7, v2, v3}, Landroid/app/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .end local v0           #dpdialog:Landroid/app/DatePickerDialog;
    :pswitch_1
    new-instance v1, Landroid/app/TimePickerDialog;

    iget-object v2, p0, Landroid/webkit/WebView$DateTimePicker;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/webkit/WebView;->access$2800(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/WebView$DateTimePicker;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    iget v4, p0, Landroid/webkit/WebView$DateTimePicker;->mhour:I

    iget v5, p0, Landroid/webkit/WebView$DateTimePicker;->mminute:I

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .local v1, tpdialog:Landroid/app/TimePickerDialog;
    new-instance v2, Landroid/webkit/WebView$DateTimePicker$5;

    invoke-direct {v2, p0}, Landroid/webkit/WebView$DateTimePicker$5;-><init>(Landroid/webkit/WebView$DateTimePicker;)V

    invoke-virtual {v1, v2}, Landroid/app/TimePickerDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const-string v2, "Clear"

    new-instance v3, Landroid/webkit/WebView$DateTimePicker$6;

    invoke-direct {v3, p0}, Landroid/webkit/WebView$DateTimePicker$6;-><init>(Landroid/webkit/WebView$DateTimePicker;)V

    invoke-virtual {v1, v7, v2, v3}, Landroid/app/TimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    move-object v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private pad(I)Ljava/lang/String;
    .locals 2
    .parameter "c"

    .prologue
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updateDate()V
    .locals 4

    .prologue
    iget-object v1, p0, Landroid/webkit/WebView$DateTimePicker;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v1}, Landroid/webkit/WebView;->access$1800(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Landroid/webkit/WebView$DateTimePicker;->mYear:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/webkit/WebView$DateTimePicker;->mMonth:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/webkit/WebView$DateTimePicker;->mDay:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebTextView;->setText(Ljava/lang/CharSequence;)V

    iget v1, p0, Landroid/webkit/WebView$DateTimePicker;->mdatetime:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/webkit/WebView$DateTimePicker;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    .local v0, d:Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .end local v0           #d:Landroid/app/Dialog;
    :cond_0
    return-void
.end method

.method private updatetime()V
    .locals 3

    .prologue
    iget v0, p0, Landroid/webkit/WebView$DateTimePicker;->mdatetime:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView$DateTimePicker;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v0}, Landroid/webkit/WebView;->access$1800(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Landroid/webkit/WebView$DateTimePicker;->mYear:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkit/WebView$DateTimePicker;->mMonth:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkit/WebView$DateTimePicker;->mDay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "T"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkit/WebView$DateTimePicker;->mhour:I

    invoke-direct {p0, v2}, Landroid/webkit/WebView$DateTimePicker;->pad(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkit/WebView$DateTimePicker;->mminute:I

    invoke-direct {p0, v2}, Landroid/webkit/WebView$DateTimePicker;->pad(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Z"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView$DateTimePicker;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v0}, Landroid/webkit/WebView;->access$1800(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Landroid/webkit/WebView$DateTimePicker;->mhour:I

    invoke-direct {p0, v2}, Landroid/webkit/WebView$DateTimePicker;->pad(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkit/WebView$DateTimePicker;->mminute:I

    invoke-direct {p0, v2}, Landroid/webkit/WebView$DateTimePicker;->pad(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public show(ILjava/lang/String;)V
    .locals 11
    .parameter "id"
    .parameter "val"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    if-eqz p2, :cond_1

    if-nez p1, :cond_1

    const-string v6, "-"

    invoke-virtual {p2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, dateformat:[Ljava/lang/String;
    aget-object v6, v2, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Landroid/webkit/WebView$DateTimePicker;->mYear:I

    aget-object v6, v2, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Landroid/webkit/WebView$DateTimePicker;->mMonth:I

    aget-object v6, v2, v10

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Landroid/webkit/WebView$DateTimePicker;->mDay:I

    .end local v2           #dateformat:[Ljava/lang/String;
    :cond_0
    :goto_0
    if-ne p1, v10, :cond_5

    iput v10, p0, Landroid/webkit/WebView$DateTimePicker;->mdatetime:I

    invoke-direct {p0, v8}, Landroid/webkit/WebView$DateTimePicker;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    .local v1, d:Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :goto_1
    return-void

    .end local v1           #d:Landroid/app/Dialog;
    :cond_1
    if-eqz p2, :cond_2

    if-ne p1, v9, :cond_2

    const-string v6, ":"

    invoke-virtual {p2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .local v5, timeformat:[Ljava/lang/String;
    aget-object v6, v5, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Landroid/webkit/WebView$DateTimePicker;->mhour:I

    aget-object v6, v5, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Landroid/webkit/WebView$DateTimePicker;->mminute:I

    goto :goto_0

    .end local v5           #timeformat:[Ljava/lang/String;
    :cond_2
    if-eqz p2, :cond_4

    if-ne p1, v10, :cond_4

    const-string v6, "T"

    invoke-virtual {p2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .local v3, datetimeformat:[Ljava/lang/String;
    aget-object v6, v3, v8

    if-eqz v6, :cond_3

    aget-object v6, v3, v8

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .restart local v2       #dateformat:[Ljava/lang/String;
    aget-object v6, v2, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Landroid/webkit/WebView$DateTimePicker;->mYear:I

    aget-object v6, v2, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Landroid/webkit/WebView$DateTimePicker;->mMonth:I

    aget-object v6, v2, v10

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Landroid/webkit/WebView$DateTimePicker;->mDay:I

    .end local v2           #dateformat:[Ljava/lang/String;
    :cond_3
    aget-object v6, v3, v9

    if-eqz v6, :cond_0

    aget-object v6, v3, v9

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .restart local v5       #timeformat:[Ljava/lang/String;
    aget-object v6, v5, v9

    const-string v7, "Z"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .local v4, time:[Ljava/lang/String;
    aget-object v6, v5, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Landroid/webkit/WebView$DateTimePicker;->mhour:I

    aget-object v6, v4, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Landroid/webkit/WebView$DateTimePicker;->mminute:I

    goto :goto_0

    .end local v3           #datetimeformat:[Ljava/lang/String;
    .end local v4           #time:[Ljava/lang/String;
    .end local v5           #timeformat:[Ljava/lang/String;
    :cond_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iput v6, p0, Landroid/webkit/WebView$DateTimePicker;->mYear:I

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iput v6, p0, Landroid/webkit/WebView$DateTimePicker;->mMonth:I

    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iput v6, p0, Landroid/webkit/WebView$DateTimePicker;->mDay:I

    const/16 v6, 0xb

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iput v6, p0, Landroid/webkit/WebView$DateTimePicker;->mhour:I

    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iput v6, p0, Landroid/webkit/WebView$DateTimePicker;->mminute:I

    goto/16 :goto_0

    .end local v0           #c:Ljava/util/Calendar;
    :cond_5
    invoke-direct {p0, p1}, Landroid/webkit/WebView$DateTimePicker;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    .restart local v1       #d:Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_1
.end method
