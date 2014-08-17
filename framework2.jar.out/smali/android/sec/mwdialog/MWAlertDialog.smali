.class public Landroid/sec/mwdialog/MWAlertDialog;
.super Landroid/app/AlertDialog$Builder;
.source "MWAlertDialog.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private infoLoader:Landroid/sec/mwdialog/MwAppInfoLoader;

.field public launcherTimer:Z

.field private mAdapter:Landroid/sec/mwdialog/MwAdapter;

.field private mContext:Landroid/content/Context;

.field private mFromComponentName:Landroid/content/ComponentName;

.field public mLaunchItemClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mManager:Landroid/sec/multiwindow/IMultiWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 2
    .parameter "context"
    .parameter "cn"

    .prologue
    const/4 v1, 0x0

    .line 35
    const v0, 0x103031b

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 23
    const-string v0, "MWAlertDialog"

    iput-object v0, p0, Landroid/sec/mwdialog/MWAlertDialog;->TAG:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Landroid/sec/mwdialog/MWAlertDialog;->mAdapter:Landroid/sec/mwdialog/MwAdapter;

    .line 26
    iput-object v1, p0, Landroid/sec/mwdialog/MWAlertDialog;->mManager:Landroid/sec/multiwindow/IMultiWindowManager;

    .line 30
    iput-object v1, p0, Landroid/sec/mwdialog/MWAlertDialog;->mFromComponentName:Landroid/content/ComponentName;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/sec/mwdialog/MWAlertDialog;->launcherTimer:Z

    .line 94
    new-instance v0, Landroid/sec/mwdialog/MWAlertDialog$3;

    invoke-direct {v0, p0}, Landroid/sec/mwdialog/MWAlertDialog$3;-><init>(Landroid/sec/mwdialog/MWAlertDialog;)V

    iput-object v0, p0, Landroid/sec/mwdialog/MWAlertDialog;->mLaunchItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 37
    iput-object p1, p0, Landroid/sec/mwdialog/MWAlertDialog;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Landroid/sec/mwdialog/MWAlertDialog;->mFromComponentName:Landroid/content/ComponentName;

    .line 39
    invoke-direct {p0}, Landroid/sec/mwdialog/MWAlertDialog;->init()V

    .line 40
    return-void
.end method

.method static synthetic access$000(Landroid/sec/mwdialog/MWAlertDialog;)Landroid/sec/mwdialog/MwAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Landroid/sec/mwdialog/MWAlertDialog;->mAdapter:Landroid/sec/mwdialog/MwAdapter;

    return-object v0
.end method

.method static synthetic access$100(Landroid/sec/mwdialog/MWAlertDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Landroid/sec/mwdialog/MWAlertDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Landroid/sec/mwdialog/MWAlertDialog;)Landroid/content/ComponentName;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Landroid/sec/mwdialog/MWAlertDialog;->mFromComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$300(Landroid/sec/mwdialog/MWAlertDialog;)Landroid/sec/multiwindow/IMultiWindowManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Landroid/sec/mwdialog/MWAlertDialog;->mManager:Landroid/sec/multiwindow/IMultiWindowManager;

    return-object v0
.end method

.method private init()V
    .locals 8

    .prologue
    .line 43
    iget-object v3, p0, Landroid/sec/mwdialog/MWAlertDialog;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/sec/multiwindow/MultiWindowManager;->getInstance(Landroid/content/Context;)Landroid/sec/multiwindow/IMultiWindowManager;

    move-result-object v3

    iput-object v3, p0, Landroid/sec/mwdialog/MWAlertDialog;->mManager:Landroid/sec/multiwindow/IMultiWindowManager;

    .line 44
    new-instance v3, Landroid/sec/mwdialog/MwAppInfoLoader;

    iget-object v4, p0, Landroid/sec/mwdialog/MWAlertDialog;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/sec/mwdialog/MwAppInfoLoader;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroid/sec/mwdialog/MWAlertDialog;->infoLoader:Landroid/sec/mwdialog/MwAppInfoLoader;

    .line 45
    new-instance v3, Landroid/sec/mwdialog/MwAdapter;

    iget-object v4, p0, Landroid/sec/mwdialog/MWAlertDialog;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/sec/mwdialog/MWAlertDialog;->infoLoader:Landroid/sec/mwdialog/MwAppInfoLoader;

    invoke-static {}, Landroid/sec/mwdialog/MwAppInfoLoader;->getList()Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Landroid/sec/mwdialog/MWAlertDialog;->mManager:Landroid/sec/multiwindow/IMultiWindowManager;

    const v7, 0x109009f

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/sec/mwdialog/MwAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/sec/multiwindow/IMultiWindowManager;I)V

    iput-object v3, p0, Landroid/sec/mwdialog/MWAlertDialog;->mAdapter:Landroid/sec/mwdialog/MwAdapter;

    .line 48
    iget-object v3, p0, Landroid/sec/mwdialog/MWAlertDialog;->mManager:Landroid/sec/multiwindow/IMultiWindowManager;

    invoke-interface {v3}, Landroid/sec/multiwindow/IMultiWindowManager;->getVisibleWindowList()Ljava/util/List;

    move-result-object v2

    .line 49
    .local v2, mlist:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 50
    .local v0, cn:Landroid/content/ComponentName;
    iget-object v3, p0, Landroid/sec/mwdialog/MWAlertDialog;->mAdapter:Landroid/sec/mwdialog/MwAdapter;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/sec/mwdialog/MwAdapter;->removeItem(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    .end local v0           #cn:Landroid/content/ComponentName;
    :cond_0
    iget-object v3, p0, Landroid/sec/mwdialog/MWAlertDialog;->mAdapter:Landroid/sec/mwdialog/MwAdapter;

    invoke-virtual {v3}, Landroid/sec/mwdialog/MwAdapter;->notifyDataSetChanged()V

    .line 60
    invoke-direct {p0}, Landroid/sec/mwdialog/MWAlertDialog;->setRegistet()V

    .line 62
    const v3, 0x1040710

    invoke-virtual {p0, v3}, Landroid/sec/mwdialog/MWAlertDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 63
    const/high16 v3, 0x104

    new-instance v4, Landroid/sec/mwdialog/MWAlertDialog$1;

    invoke-direct {v4, p0}, Landroid/sec/mwdialog/MWAlertDialog$1;-><init>(Landroid/sec/mwdialog/MWAlertDialog;)V

    invoke-virtual {p0, v3, v4}, Landroid/sec/mwdialog/MWAlertDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 71
    iget-object v3, p0, Landroid/sec/mwdialog/MWAlertDialog;->mAdapter:Landroid/sec/mwdialog/MwAdapter;

    iget-object v4, p0, Landroid/sec/mwdialog/MWAlertDialog;->mLaunchItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v3, v4}, Landroid/sec/mwdialog/MWAlertDialog;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 72
    const/16 v3, 0x12c

    invoke-direct {p0, v3}, Landroid/sec/mwdialog/MWAlertDialog;->timeOut(I)V

    .line 73
    return-void
.end method

.method private setRegistet()V
    .locals 5

    .prologue
    .line 76
    iget-object v3, p0, Landroid/sec/mwdialog/MWAlertDialog;->infoLoader:Landroid/sec/mwdialog/MwAppInfoLoader;

    invoke-static {}, Landroid/sec/mwdialog/MwAppInfoLoader;->getList()Ljava/util/List;

    move-result-object v1

    .line 77
    .local v1, appInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/sec/mwdialog/MwAppInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/mwdialog/MwAppInfo;

    .line 78
    .local v0, appInfo:Landroid/sec/mwdialog/MwAppInfo;
    iget-object v3, p0, Landroid/sec/mwdialog/MWAlertDialog;->mManager:Landroid/sec/multiwindow/IMultiWindowManager;

    invoke-virtual {v0}, Landroid/sec/mwdialog/MwAppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/sec/multiwindow/IMultiWindowManager;->registerMultiWindow(Landroid/content/ComponentName;)Landroid/sec/multiwindow/IMultiWindow;

    goto :goto_0

    .line 80
    .end local v0           #appInfo:Landroid/sec/mwdialog/MwAppInfo;
    :cond_0
    return-void
.end method

.method private timeOut(I)V
    .locals 4
    .parameter "count"

    .prologue
    .line 82
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/sec/mwdialog/MWAlertDialog;->launcherTimer:Z

    .line 83
    new-instance v0, Landroid/sec/mwdialog/MWAlertDialog$2;

    invoke-direct {v0, p0}, Landroid/sec/mwdialog/MWAlertDialog$2;-><init>(Landroid/sec/mwdialog/MWAlertDialog;)V

    .line 90
    .local v0, myTask:Ljava/util/TimerTask;
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 91
    .local v1, time:Ljava/util/Timer;
    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 92
    return-void
.end method
