.class Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;
.super Landroid/app/AlertDialog;
.source "PenDetachmentAlertDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PenDetachmentAlertDialog"

.field private static isBoxChecked:Z


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private final mContext:Landroid/content/Context;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->isBoxChecked:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "theme"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 27
    iput-object p1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->mContext:Landroid/content/Context;

    .line 28
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 18
    sget-boolean v0, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->isBoxChecked:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    sput-boolean p0, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->isBoxChecked:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x10900a5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->mView:Landroid/view/View;

    .line 33
    iget-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->setView(Landroid/view/View;)V

    .line 34
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->setInverseBackgroundForced(Z)V

    .line 36
    const v0, 0x1040014

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->setTitle(I)V

    .line 37
    const v0, 0x10802f8

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->setIcon(I)V

    .line 39
    iget-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->mView:Landroid/view/View;

    const v1, 0x1020001

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->mCheckBox:Landroid/widget/CheckBox;

    .line 40
    iget-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->mCheckBox:Landroid/widget/CheckBox;

    sget-boolean v1, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->isBoxChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 42
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->mContext:Landroid/content/Context;

    const v2, 0x104000a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog$1;-><init>(Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 56
    iget-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog$2;-><init>(Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 67
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 68
    return-void
.end method
