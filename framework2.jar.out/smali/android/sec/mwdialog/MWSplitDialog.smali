.class public Landroid/sec/mwdialog/MWSplitDialog;
.super Landroid/app/Dialog;
.source "MWSplitDialog.java"


# instance fields
.field public mButtonClickListener:Landroid/view/View$OnClickListener;

.field private mCheck:Z

.field private mCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field final mCloseReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mManager:Landroid/sec/multiwindow/IMultiWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 65
    const v0, 0x1030073

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sec/mwdialog/MWSplitDialog;->mManager:Landroid/sec/multiwindow/IMultiWindowManager;

    .line 47
    new-instance v0, Landroid/sec/mwdialog/MWSplitDialog$1;

    invoke-direct {v0, p0}, Landroid/sec/mwdialog/MWSplitDialog$1;-><init>(Landroid/sec/mwdialog/MWSplitDialog;)V

    iput-object v0, p0, Landroid/sec/mwdialog/MWSplitDialog;->mCloseReceiver:Landroid/content/BroadcastReceiver;

    .line 141
    new-instance v0, Landroid/sec/mwdialog/MWSplitDialog$2;

    invoke-direct {v0, p0}, Landroid/sec/mwdialog/MWSplitDialog$2;-><init>(Landroid/sec/mwdialog/MWSplitDialog;)V

    iput-object v0, p0, Landroid/sec/mwdialog/MWSplitDialog;->mCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 151
    new-instance v0, Landroid/sec/mwdialog/MWSplitDialog$3;

    invoke-direct {v0, p0}, Landroid/sec/mwdialog/MWSplitDialog$3;-><init>(Landroid/sec/mwdialog/MWSplitDialog;)V

    iput-object v0, p0, Landroid/sec/mwdialog/MWSplitDialog;->mButtonClickListener:Landroid/view/View$OnClickListener;

    .line 67
    iput-object p1, p0, Landroid/sec/mwdialog/MWSplitDialog;->mContext:Landroid/content/Context;

    .line 68
    invoke-direct {p0}, Landroid/sec/mwdialog/MWSplitDialog;->init()V

    .line 69
    return-void
.end method

.method static synthetic access$000(Landroid/sec/mwdialog/MWSplitDialog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Landroid/sec/mwdialog/MWSplitDialog;->mCheck:Z

    return v0
.end method

.method static synthetic access$002(Landroid/sec/mwdialog/MWSplitDialog;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Landroid/sec/mwdialog/MWSplitDialog;->mCheck:Z

    return p1
.end method

.method static synthetic access$100(Landroid/sec/mwdialog/MWSplitDialog;)Landroid/sec/multiwindow/IMultiWindowManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Landroid/sec/mwdialog/MWSplitDialog;->mManager:Landroid/sec/multiwindow/IMultiWindowManager;

    return-object v0
.end method

.method private createLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 169
    const/16 v1, 0x7d2

    .line 183
    .local v1, windowType:I
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const v2, 0x1040340

    const/4 v3, -0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    .line 191
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 192
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 193
    const/16 v2, 0x11

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 194
    return-object v0
.end method

.method private getSpan(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 7
    .parameter "text"

    .prologue
    const/16 v6, 0x21

    const/16 v5, 0x12

    const/4 v4, 0x4

    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, result:Landroid/text/SpannableString;
    new-instance v0, Landroid/text/SpannableString;

    .end local v0           #result:Landroid/text/SpannableString;
    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 136
    .restart local v0       #result:Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget-object v2, p0, Landroid/sec/mwdialog/MWSplitDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1060068

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 137
    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 138
    return-object v0
.end method

.method private init()V
    .locals 17

    .prologue
    .line 82
    const-string v11, "MWSplitDialog"

    const-string v12, "init"

    invoke-static {v11, v12}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-direct/range {p0 .. p0}, Landroid/sec/mwdialog/MWSplitDialog;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 85
    .local v5, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Landroid/sec/mwdialog/MWSplitDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 87
    .local v4, mWindow:Landroid/view/Window;
    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Landroid/view/Window;->requestFeature(I)Z

    .line 88
    const v11, 0x106000d

    invoke-virtual {v4, v11}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 89
    const v11, 0x10900a0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/sec/mwdialog/MWSplitDialog;->setContentView(I)V

    .line 91
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/sec/mwdialog/MWSplitDialog;->mContext:Landroid/content/Context;

    invoke-static {v11}, Landroid/sec/multiwindow/MultiWindowManager;->getInstance(Landroid/content/Context;)Landroid/sec/multiwindow/IMultiWindowManager;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Landroid/sec/mwdialog/MWSplitDialog;->mManager:Landroid/sec/multiwindow/IMultiWindowManager;

    .line 94
    const v11, 0x10203ce

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/sec/mwdialog/MWSplitDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 95
    .local v6, tv1:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/sec/mwdialog/MWSplitDialog;->mContext:Landroid/content/Context;

    const v12, 0x1040714

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/sec/mwdialog/MWSplitDialog;->mContext:Landroid/content/Context;

    const v16, 0x104071c

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, content:Ljava/lang/String;
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    const v11, 0x10203cf

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/sec/mwdialog/MWSplitDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 98
    .local v7, tv2:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/sec/mwdialog/MWSplitDialog;->mContext:Landroid/content/Context;

    const v12, 0x1040716

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/sec/mwdialog/MWSplitDialog;->mContext:Landroid/content/Context;

    const v16, 0x104071d

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    const v11, 0x10203d0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/sec/mwdialog/MWSplitDialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 101
    .local v8, tv3:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/sec/mwdialog/MWSplitDialog;->mContext:Landroid/content/Context;

    const v12, 0x1040718

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/sec/mwdialog/MWSplitDialog;->mContext:Landroid/content/Context;

    const v16, 0x104071e

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 102
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    const v11, 0x10203d1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/sec/mwdialog/MWSplitDialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 104
    .local v9, tv4:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/sec/mwdialog/MWSplitDialog;->mContext:Landroid/content/Context;

    const v12, 0x104071a

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/sec/mwdialog/MWSplitDialog;->mContext:Landroid/content/Context;

    const v16, 0x104071c

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    const v11, 0x10203d2

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/sec/mwdialog/MWSplitDialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 107
    .local v10, tv5:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/sec/mwdialog/MWSplitDialog;->mContext:Landroid/content/Context;

    const v12, 0x104071b

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/sec/mwdialog/MWSplitDialog;->mContext:Landroid/content/Context;

    const v16, 0x104071c

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 108
    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    const v11, 0x10203d3

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/sec/mwdialog/MWSplitDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 111
    .local v1, cb:Landroid/widget/CheckBox;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/sec/mwdialog/MWSplitDialog;->mCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v11}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 113
    const v11, 0x10203d4

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/sec/mwdialog/MWSplitDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 114
    .local v3, mButton_ok:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/sec/mwdialog/MWSplitDialog;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    invoke-virtual {v4, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 118
    invoke-direct/range {p0 .. p0}, Landroid/sec/mwdialog/MWSplitDialog;->registCloseDialogBroadcastReceiver()V

    .line 122
    return-void
.end method

.method private registCloseDialogBroadcastReceiver()V
    .locals 3

    .prologue
    .line 126
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 128
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Landroid/sec/mwdialog/MWSplitDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/sec/mwdialog/MWSplitDialog;->mCloseReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 131
    return-void
.end method


# virtual methods
.method protected onStop()V
    .locals 2

    .prologue
    .line 76
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 77
    invoke-virtual {p0}, Landroid/sec/mwdialog/MWSplitDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/sec/mwdialog/MWSplitDialog;->mCloseReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 79
    return-void
.end method
