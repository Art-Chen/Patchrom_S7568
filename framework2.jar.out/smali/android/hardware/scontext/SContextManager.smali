.class public Landroid/hardware/scontext/SContextManager;
.super Ljava/lang/Object;
.source "SContextManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    }
.end annotation


# static fields
.field public static final ACTION_SCONTEXT_EVENT:Ljava/lang/String; = "android.hardware.scontext.SCONTEXT_EVENT"

.field public static final APPROACH:I = 0x1

.field public static final LOCATION:I = 0x3

.field public static final MOTION:I = 0x2

.field public static final MOTION_PICKUP:I = 0x1

.field public static final MOTION_PUTDOWN:I = 0x2

.field public static final MOTION_UNKNOWN:I = 0x0

.field public static final NONE:I = 0x0

.field public static final PEDOMETER:I = 0x5

.field public static final STEPCOUNT_ALERT:I = 0x6

.field private static final TAG:Ljava/lang/String; = "SContextManager"

.field public static final ZONE:I = 0x4

.field public static final ZONE_ENTER:I = 0x1

.field public static final ZONE_EXIT:I = 0x2

.field public static final ZONE_UNKNOWN:I


# instance fields
.field private final mListenerDelegates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field mMainLooper:Landroid/os/Looper;

.field private mSContextService:Landroid/hardware/scontext/ISContextService;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .parameter "mainLooper"

    .prologue
    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/ArrayList;

    .line 67
    const-string v0, "scontext"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/scontext/ISContextService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/scontext/ISContextService;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    .line 69
    iput-object p1, p0, Landroid/hardware/scontext/SContextManager;->mMainLooper:Landroid/os/Looper;

    .line 70
    return-void
.end method


# virtual methods
.method public initializeSContextService(I)V
    .locals 3
    .parameter "service"

    .prologue
    .line 208
    if-gtz p1, :cond_0

    .line 216
    :goto_0
    return-void

    .line 212
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v1, p1}, Landroid/hardware/scontext/ISContextService;->initializeSContextService(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SContextManager"

    const-string v2, "RemoteException in initializeSContextService: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;)Z
    .locals 2
    .parameter "listener"

    .prologue
    const/4 v1, 0x0

    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v1, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;IILandroid/os/Handler;)Z

    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;I)Z
    .locals 2
    .parameter "listener"
    .parameter "service"

    .prologue
    .line 83
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;IILandroid/os/Handler;)Z

    .line 84
    const/4 v0, 0x1

    return v0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;II)Z
    .locals 2
    .parameter "listener"
    .parameter "service"
    .parameter "stepcount"

    .prologue
    const/4 v1, 0x0

    .line 93
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 94
    invoke-virtual {p0, p1, p2, p3, v1}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;IILandroid/os/Handler;)Z

    .line 99
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 96
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;IILandroid/os/Handler;)Z

    goto :goto_0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IILandroid/os/Handler;)Z
    .locals 10
    .parameter "listener"
    .parameter "service"
    .parameter "stepcount"
    .parameter "handler"

    .prologue
    const/4 v9, 0x1

    .line 104
    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    .line 105
    iget-object v6, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v6

    .line 107
    :try_start_0
    iget-object v5, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 108
    .local v4, size:I
    const/4 v3, 0x0

    .line 110
    .local v3, scontextListener:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    new-instance v2, Landroid/hardware/scontext/SContext;

    invoke-direct {v2}, Landroid/hardware/scontext/SContext;-><init>()V

    .line 111
    .local v2, scontext:Landroid/hardware/scontext/SContext;
    invoke-virtual {v2, p2}, Landroid/hardware/scontext/SContext;->setType(I)V

    .line 112
    invoke-virtual {v2, p3}, Landroid/hardware/scontext/SContext;->setStepCount(I)V

    .line 114
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 115
    iget-object v5, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #scontextListener:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    check-cast v3, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    .line 116
    .restart local v3       #scontextListener:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    invoke-virtual {v3}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->getListener()Landroid/hardware/scontext/SContextListener;

    move-result-object v5

    if-ne v5, p1, :cond_1

    .line 117
    invoke-virtual {v3}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->getService()Ljava/util/HashSet;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 118
    const-string v5, "SContextManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  .registerListener : fail. already registered / listener count = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", listener="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", service="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    monitor-exit v6

    .line 146
    .end local v1           #i:I
    .end local v2           #scontext:Landroid/hardware/scontext/SContext;
    .end local v3           #scontextListener:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    .end local v4           #size:I
    :cond_0
    :goto_1
    return v9

    .line 126
    .restart local v1       #i:I
    .restart local v2       #scontext:Landroid/hardware/scontext/SContext;
    .restart local v3       #scontextListener:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    .restart local v4       #size:I
    :cond_1
    const/4 v3, 0x0

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    :cond_2
    if-nez v3, :cond_3

    .line 131
    new-instance v3, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    .end local v3           #scontextListener:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    const/4 v5, 0x0

    invoke-direct {v3, p0, p1, p2, v5}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;-><init>(Landroid/hardware/scontext/SContextManager;Landroid/hardware/scontext/SContextListener;ILandroid/os/Handler;)V

    .line 132
    .restart local v3       #scontextListener:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    invoke-virtual {v3}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->getService()Ljava/util/HashSet;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v5, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :goto_2
    :try_start_1
    iget-object v5, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v5, v3, v2}, Landroid/hardware/scontext/ISContextService;->registerCallback(Landroid/os/IBinder;Landroid/hardware/scontext/SContext;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 143
    :goto_3
    :try_start_2
    monitor-exit v6

    goto :goto_1

    .end local v1           #i:I
    .end local v2           #scontext:Landroid/hardware/scontext/SContext;
    .end local v3           #scontextListener:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    .end local v4           #size:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 135
    .restart local v1       #i:I
    .restart local v2       #scontext:Landroid/hardware/scontext/SContext;
    .restart local v3       #scontextListener:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    .restart local v4       #size:I
    :cond_3
    :try_start_3
    invoke-virtual {v3}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->getService()Ljava/util/HashSet;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "SContextManager"

    const-string v7, "RemoteException in registerListener: "

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/os/Handler;)Z
    .locals 1
    .parameter "listener"
    .parameter "service"
    .parameter "handler"

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;IILandroid/os/Handler;)Z

    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;Landroid/os/Handler;)Z
    .locals 1
    .parameter "listener"
    .parameter "handler"

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-virtual {p0, p1, v0, v0, p2}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;IILandroid/os/Handler;)Z

    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public unregisterListener(Landroid/hardware/scontext/SContextListener;)V
    .locals 7
    .parameter "listener"

    .prologue
    .line 151
    iget-object v5, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v5

    .line 152
    :try_start_0
    iget-object v4, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 153
    .local v3, size:I
    const/4 v2, 0x0

    .line 155
    .local v2, scontextListener:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 157
    iget-object v4, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #scontextListener:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    check-cast v2, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    .line 159
    .restart local v2       #scontextListener:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    invoke-virtual {v2}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->getListener()Landroid/hardware/scontext/SContextListener;

    move-result-object v4

    if-ne v4, p1, :cond_1

    .line 161
    iget-object v4, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :try_start_1
    iget-object v4, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v4, v2}, Landroid/hardware/scontext/ISContextService;->unregisterCallback(Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 171
    :cond_0
    :goto_1
    :try_start_2
    monitor-exit v5

    .line 172
    return-void

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "SContextManager"

    const-string v6, "RemoteException in unregisterListener: "

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 171
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #i:I
    .end local v2           #scontextListener:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    .end local v3           #size:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 155
    .restart local v1       #i:I
    .restart local v2       #scontextListener:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    .restart local v3       #size:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public unregisterListener(Landroid/hardware/scontext/SContextListener;I)V
    .locals 8
    .parameter "listener"
    .parameter "service"

    .prologue
    .line 176
    iget-object v6, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v6

    .line 177
    :try_start_0
    iget-object v5, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 178
    .local v4, size:I
    const/4 v2, 0x0

    .line 181
    .local v2, scontextListener:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 183
    iget-object v5, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #scontextListener:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    check-cast v2, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    .line 185
    .restart local v2       #scontextListener:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    invoke-virtual {v2}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->getListener()Landroid/hardware/scontext/SContextListener;

    move-result-object v5

    if-ne v5, p1, :cond_1

    .line 187
    invoke-virtual {v2}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->getService()Ljava/util/HashSet;

    move-result-object v3

    .line 189
    .local v3, services:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 191
    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 193
    iget-object v5, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    :try_start_1
    iget-object v5, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v5, v2}, Landroid/hardware/scontext/ISContextService;->unregisterCallback(Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 204
    .end local v3           #services:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_0
    :goto_1
    :try_start_2
    monitor-exit v6

    .line 205
    return-void

    .line 197
    .restart local v3       #services:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    .line 198
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "SContextManager"

    const-string v7, "RemoteException in unregisterListener: "

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 204
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #i:I
    .end local v2           #scontextListener:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    .end local v3           #services:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v4           #size:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 181
    .restart local v1       #i:I
    .restart local v2       #scontextListener:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    .restart local v4       #size:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
