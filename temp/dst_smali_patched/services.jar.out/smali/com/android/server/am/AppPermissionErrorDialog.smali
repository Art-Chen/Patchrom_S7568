.class Lcom/android/server/am/AppPermissionErrorDialog;
.super Lcom/android/server/am/BaseErrorDialog;
.source "AppPermissionErrorDialog.java"


# static fields
.field private static final FORCE_QUIT:I = 0x0

.field private static final FORCE_QUIT_AND_REPORT:I = 0x1

.field private static final GETMSGBYAPP:I = 0x2


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mCMAppName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mMessageByApp:Ljava/lang/String;

.field private mPermission:Ljava/lang/String;

.field private final mProc:Lcom/android/server/am/ProcessRecord;

.field private mResource:Landroid/content/res/Resources;

.field private final mResult:Lcom/android/server/am/AppErrorResult;

.field private mService:Landroid/app/ICMDialogMessageManager;

.field private mTitleByApp:Ljava/lang/String;

.field private serviceConn:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 10
    .parameter "context"
    .parameter "result"
    .parameter "app"
    .parameter "permission"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/server/am/AppPermissionErrorDialog;->mContext:Landroid/content/Context;

    iput-object v6, p0, Lcom/android/server/am/AppPermissionErrorDialog;->mTitleByApp:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/server/am/AppPermissionErrorDialog;->mMessageByApp:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/server/am/AppPermissionErrorDialog;->mAppName:Ljava/lang/String;

    const-string v5, "Permission manager"

    iput-object v5, p0, Lcom/android/server/am/AppPermissionErrorDialog;->mCMAppName:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/server/am/AppPermissionErrorDialog;->mPermission:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/server/am/AppPermissionErrorDialog;->mResource:Landroid/content/res/Resources;

    iput-object v6, p0, Lcom/android/server/am/AppPermissionErrorDialog;->mService:Landroid/app/ICMDialogMessageManager;

    new-instance v5, Lcom/android/server/am/AppPermissionErrorDialog$1;

    invoke-direct {v5, p0}, Lcom/android/server/am/AppPermissionErrorDialog$1;-><init>(Lcom/android/server/am/AppPermissionErrorDialog;)V

    iput-object v5, p0, Lcom/android/server/am/AppPermissionErrorDialog;->serviceConn:Landroid/content/ServiceConnection;

    new-instance v5, Lcom/android/server/am/AppPermissionErrorDialog$2;

    invoke-direct {v5, p0}, Lcom/android/server/am/AppPermissionErrorDialog$2;-><init>(Lcom/android/server/am/AppPermissionErrorDialog;)V

    iput-object v5, p0, Lcom/android/server/am/AppPermissionErrorDialog;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/am/AppPermissionErrorDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/am/AppPermissionErrorDialog;->mResource:Landroid/content/res/Resources;

    iput-object p3, p0, Lcom/android/server/am/AppPermissionErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iput-object p2, p0, Lcom/android/server/am/AppPermissionErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    const/4 v4, 0x0

    .local v4, tmp_name:Ljava/lang/CharSequence;
    iget-object v5, p3, Lcom/android/server/am/ProcessRecord;->pkgList:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    if-ne v5, v9, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    .local v3, name:Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/am/AppPermissionErrorDialog;->mAppName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v5, p4, v6}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/PermissionInfo;->labelRes:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/am/AppPermissionErrorDialog;->mPermission:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.android.app.capabilitymanager"

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .local v0, CMInfo:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/am/AppPermissionErrorDialog;->mCMAppName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #CMInfo:Landroid/content/pm/ApplicationInfo;
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/AppPermissionErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/high16 v6, 0x4000

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/android/server/am/AppPermissionErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const-string v6, "Error"

    invoke-virtual {v5, v6}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v8}, Lcom/android/server/am/AppPermissionErrorDialog;->setCancelable(Z)V

    const/4 v5, -0x1

    iget-object v6, p0, Lcom/android/server/am/AppPermissionErrorDialog;->mResource:Landroid/content/res/Resources;

    const v7, 0x104050d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/AppPermissionErrorDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/server/am/AppPermissionErrorDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    invoke-direct {p0}, Lcom/android/server/am/AppPermissionErrorDialog;->setTitleAndMessage()V

    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.android.security.capabilitymanager.action.GET_DIALOGMESSAGE"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, bindIntent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/am/AppPermissionErrorDialog;->serviceConn:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v1, v5, v9}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void

    .end local v1           #bindIntent:Landroid/content/Intent;
    :catch_0
    move-exception v2

    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    iput-object p4, p0, Lcom/android/server/am/AppPermissionErrorDialog;->mPermission:Ljava/lang/String;

    const-string v5, "Permission manager"

    iput-object v5, p0, Lcom/android/server/am/AppPermissionErrorDialog;->mCMAppName:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3           #name:Ljava/lang/CharSequence;
    :cond_0
    iget-object v3, p3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .restart local v3       #name:Ljava/lang/CharSequence;
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/am/AppPermissionErrorDialog;->mAppName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v5, p4, v6}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/PermissionInfo;->labelRes:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/am/AppPermissionErrorDialog;->mPermission:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.android.app.capabilitymanager"

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .restart local v0       #CMInfo:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/am/AppPermissionErrorDialog;->mCMAppName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .end local v0           #CMInfo:Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v2

    .restart local v2       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    iput-object p4, p0, Lcom/android/server/am/AppPermissionErrorDialog;->mPermission:Ljava/lang/String;

    const-string v5, "Permission manager"

    iput-object v5, p0, Lcom/android/server/am/AppPermissionErrorDialog;->mCMAppName:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/am/AppPermissionErrorDialog;)Landroid/app/ICMDialogMessageManager;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/am/AppPermissionErrorDialog;->mService:Landroid/app/ICMDialogMessageManager;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/am/AppPermissionErrorDialog;Landroid/app/ICMDialogMessageManager;)Landroid/app/ICMDialogMessageManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/server/am/AppPermissionErrorDialog;->mService:Landroid/app/ICMDialogMessageManager;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/android/server/am/AppPermissionErrorDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/am/AppPermissionErrorDialog;->setTitleAndMessageByApp()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/server/am/AppPermissionErrorDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/server/am/AppPermissionErrorDialog;->mTitleByApp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/server/am/AppPermissionErrorDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/server/am/AppPermissionErrorDialog;->mMessageByApp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/am/AppPermissionErrorDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/am/AppPermissionErrorDialog;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/am/AppPermissionErrorDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/am/AppPermissionErrorDialog;->mPermission:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/am/AppPermissionErrorDialog;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/am/AppPermissionErrorDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/am/AppPermissionErrorDialog;)Lcom/android/server/am/ProcessRecord;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/am/AppPermissionErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/am/AppPermissionErrorDialog;)Lcom/android/server/am/AppErrorResult;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/am/AppPermissionErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/am/AppPermissionErrorDialog;)Landroid/content/ServiceConnection;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/am/AppPermissionErrorDialog;->serviceConn:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/am/AppPermissionErrorDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/am/AppPermissionErrorDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private setTitleAndMessage()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/am/AppPermissionErrorDialog;->mTitleByApp:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AppPermissionErrorDialog;->mMessageByApp:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AppPermissionErrorDialog;->mTitleByApp:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppPermissionErrorDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/server/am/AppPermissionErrorDialog;->mMessageByApp:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppPermissionErrorDialog;->setMessage(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Error"

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppPermissionErrorDialog;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission error. Permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppPermissionErrorDialog;->mPermission:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is managed by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppPermissionErrorDialog;->mCMAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". If you want to be using this permission, please enable permission in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppPermissionErrorDialog;->mCMAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". The application "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppPermissionErrorDialog;->mAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is terminated."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppPermissionErrorDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setTitleAndMessageByApp()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/am/AppPermissionErrorDialog;->mTitleByApp:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AppPermissionErrorDialog;->mMessageByApp:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AppPermissionErrorDialog;->mTitleByApp:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppPermissionErrorDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/server/am/AppPermissionErrorDialog;->mMessageByApp:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppPermissionErrorDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public show()V
    .locals 0

    .prologue
    invoke-super {p0}, Lcom/android/server/am/BaseErrorDialog;->show()V

    return-void
.end method
