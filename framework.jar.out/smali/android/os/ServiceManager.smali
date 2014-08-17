.class public final Landroid/os/ServiceManager;
.super Ljava/lang/Object;
.source "ServiceManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ServiceManager"

.field private static sCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private static sServiceManager:Landroid/os/IServiceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/ServiceManager;->sCache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static CurrentDataNW()I
    .locals 3

    .prologue
    .line 156
    const-string v2, "gsm.gsm.dataservice"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, mDataService:Ljava/lang/String;
    const/4 v0, 0x0

    .line 159
    .local v0, curDataNW:I
    if-eqz v1, :cond_0

    .line 160
    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 161
    const/4 v0, 0x0

    .line 167
    :cond_0
    :goto_0
    return v0

    .line 163
    :cond_1
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static addService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "service"

    .prologue
    .line 89
    :try_start_0
    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/os/IServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "ServiceManager"

    const-string v2, "error in addService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static checkService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 4
    .parameter "name"

    .prologue
    .line 115
    :try_start_0
    sget-object v2, Landroid/os/ServiceManager;->sCache:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 116
    .local v1, service:Landroid/os/IBinder;
    if-eqz v1, :cond_0

    .line 123
    .end local v1           #service:Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 119
    .restart local v1       #service:Landroid/os/IBinder;
    :cond_0
    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    move-result-object v2

    invoke-interface {v2, p0}, Landroid/os/IServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 121
    .end local v1           #service:Landroid/os/IBinder;
    :catch_0
    move-exception v0

    .line 122
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "ServiceManager"

    const-string v3, "error in checkService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getIServiceManager()Landroid/os/IServiceManager;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Landroid/os/ServiceManager;->sServiceManager:Landroid/os/IServiceManager;

    if-eqz v0, :cond_0

    .line 38
    sget-object v0, Landroid/os/ServiceManager;->sServiceManager:Landroid/os/IServiceManager;

    .line 43
    :goto_0
    return-object v0

    .line 42
    :cond_0
    invoke-static {}, Lcom/android/internal/os/BinderInternal;->getContextObject()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ServiceManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/os/IServiceManager;

    move-result-object v0

    sput-object v0, Landroid/os/ServiceManager;->sServiceManager:Landroid/os/IServiceManager;

    .line 43
    sget-object v0, Landroid/os/ServiceManager;->sServiceManager:Landroid/os/IServiceManager;

    goto :goto_0
.end method

.method public static getService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 4
    .parameter "name"

    .prologue
    .line 68
    :try_start_0
    sget-object v2, Landroid/os/ServiceManager;->sCache:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 69
    .local v1, service:Landroid/os/IBinder;
    if-eqz v1, :cond_0

    .line 77
    .end local v1           #service:Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 72
    .restart local v1       #service:Landroid/os/IBinder;
    :cond_0
    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    move-result-object v2

    invoke-interface {v2, p0}, Landroid/os/IServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 74
    .end local v1           #service:Landroid/os/IBinder;
    :catch_0
    move-exception v0

    .line 75
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "ServiceManager"

    const-string v3, "error in getService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static initServiceCache(Ljava/util/Map;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, cache:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/os/IBinder;>;"
    sget-object v0, Landroid/os/ServiceManager;->sCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setServiceCache may only be called once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_0
    sget-object v0, Landroid/os/ServiceManager;->sCache:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 152
    return-void
.end method

.method public static listServices()[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 132
    :try_start_0
    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IServiceManager;->listServices()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 135
    .local v0, e:Landroid/os/RemoteException;
    :goto_0
    return-object v1

    .line 133
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .line 134
    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v1, "ServiceManager"

    const-string v2, "error in listServices"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    const/4 v1, 0x0

    goto :goto_0
.end method
