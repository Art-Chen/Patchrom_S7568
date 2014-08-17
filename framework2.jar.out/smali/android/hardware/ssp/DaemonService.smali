.class Landroid/hardware/ssp/DaemonService;
.super Ljava/lang/Object;
.source "DaemonService.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLooper:Landroid/os/Looper;

.field private mObserver:Ljava/util/Observable;

.field private mServiceName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 0
    .parameter "context"
    .parameter "looper"

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p0, p1}, Landroid/hardware/ssp/DaemonService;->setContext(Landroid/content/Context;)V

    .line 49
    invoke-virtual {p0, p2}, Landroid/hardware/ssp/DaemonService;->setLooper(Landroid/os/Looper;)V

    .line 50
    return-void
.end method


# virtual methods
.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Landroid/hardware/ssp/DaemonService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Landroid/hardware/ssp/DaemonService;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method protected getObserver()Ljava/util/Observable;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Landroid/hardware/ssp/DaemonService;->mObserver:Ljava/util/Observable;

    return-object v0
.end method

.method protected getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Landroid/hardware/ssp/DaemonService;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method protected setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 87
    iput-object p1, p0, Landroid/hardware/ssp/DaemonService;->mContext:Landroid/content/Context;

    .line 88
    return-void
.end method

.method protected setLooper(Landroid/os/Looper;)V
    .locals 0
    .parameter "looper"

    .prologue
    .line 106
    iput-object p1, p0, Landroid/hardware/ssp/DaemonService;->mLooper:Landroid/os/Looper;

    .line 107
    return-void
.end method

.method protected setObserver(Ljava/util/Observable;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 125
    iput-object p1, p0, Landroid/hardware/ssp/DaemonService;->mObserver:Ljava/util/Observable;

    .line 126
    return-void
.end method

.method protected setServiceName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 68
    iput-object p1, p0, Landroid/hardware/ssp/DaemonService;->mServiceName:Ljava/lang/String;

    .line 69
    return-void
.end method
