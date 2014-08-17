.class Landroid/hardware/ssp/DaemonAggregatorNotification;
.super Landroid/hardware/ssp/ADaemonAggregator;
.source "DaemonAggregatorNotification.java"

# interfaces
.implements Landroid/hardware/ssp/IDaemonListenerAggregatorGesture;
.implements Landroid/hardware/ssp/IDaemonListenerAggregatorMotion;


# static fields
.field private static volatile instance:Landroid/hardware/ssp/DaemonAggregatorNotification;


# instance fields
.field private mModeChangeCnt:I

.field private mNightMode:I

.field private mNotificationContext:Landroid/hardware/ssp/DaemonContexts$SSPNotification;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/hardware/ssp/ADaemonAggregator;-><init>()V

    return-void
.end method

.method protected static getInstance()Landroid/hardware/ssp/DaemonAggregatorNotification;
    .locals 2

    .prologue
    .line 42
    sget-object v0, Landroid/hardware/ssp/DaemonAggregatorNotification;->instance:Landroid/hardware/ssp/DaemonAggregatorNotification;

    if-nez v0, :cond_1

    .line 43
    const-class v1, Landroid/hardware/ssp/DaemonAggregatorNotification;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Landroid/hardware/ssp/DaemonAggregatorNotification;->instance:Landroid/hardware/ssp/DaemonAggregatorNotification;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Landroid/hardware/ssp/DaemonAggregatorNotification;

    invoke-direct {v0}, Landroid/hardware/ssp/DaemonAggregatorNotification;-><init>()V

    sput-object v0, Landroid/hardware/ssp/DaemonAggregatorNotification;->instance:Landroid/hardware/ssp/DaemonAggregatorNotification;

    .line 47
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_1
    sget-object v0, Landroid/hardware/ssp/DaemonAggregatorNotification;->instance:Landroid/hardware/ssp/DaemonAggregatorNotification;

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private notifyNotificationContext()V
    .locals 2

    .prologue
    .line 169
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonAggregator;->isRun()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/ssp/DaemonAggregatorNotification;->mNotificationContext:Landroid/hardware/ssp/DaemonContexts$SSPNotification;

    if-nez v0, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerObserver;->getInstance()Landroid/hardware/ssp/DaemonManagerObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonManagerObserver;->getAggregatorObserver()Landroid/hardware/ssp/DaemonObserverAggregator;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/ssp/DaemonAggregatorNotification;->mNotificationContext:Landroid/hardware/ssp/DaemonContexts$SSPNotification;

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/DaemonObserverAggregator;->notifyNotificationContext(Landroid/hardware/ssp/DaemonContexts$SSPNotification;)V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x4

    iput v0, p0, Landroid/hardware/ssp/DaemonAggregatorNotification;->mNightMode:I

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/ssp/DaemonAggregatorNotification;->mModeChangeCnt:I

    .line 106
    new-instance v0, Landroid/hardware/ssp/DaemonContexts$SSPNotification;

    invoke-direct {v0}, Landroid/hardware/ssp/DaemonContexts$SSPNotification;-><init>()V

    iput-object v0, p0, Landroid/hardware/ssp/DaemonAggregatorNotification;->mNotificationContext:Landroid/hardware/ssp/DaemonContexts$SSPNotification;

    .line 107
    iget-object v0, p0, Landroid/hardware/ssp/DaemonAggregatorNotification;->mNotificationContext:Landroid/hardware/ssp/DaemonContexts$SSPNotification;

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonContexts$SSPNotification;->clear()V

    .line 109
    invoke-static {}, Landroid/hardware/ssp/DaemonAggregatorContext;->getInstance()Landroid/hardware/ssp/DaemonAggregatorContext;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorContext;->getGestureAggregator()Landroid/hardware/ssp/DaemonAggregatorGesture;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorGesture;->clear()V

    .line 110
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonAggregator;->isRun()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    invoke-virtual {p0}, Landroid/hardware/ssp/DaemonAggregatorNotification;->clear()V

    .line 63
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerObserver;->getInstance()Landroid/hardware/ssp/DaemonManagerObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonManagerObserver;->getAggregatorObserver()Landroid/hardware/ssp/DaemonObserverAggregator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/ssp/DaemonObserverAggregator;->addMotionObserver(Landroid/hardware/ssp/IDaemonListenerAggregatorMotion;)V

    .line 65
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerObserver;->getInstance()Landroid/hardware/ssp/DaemonManagerObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonManagerObserver;->getAggregatorObserver()Landroid/hardware/ssp/DaemonObserverAggregator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/ssp/DaemonObserverAggregator;->addGestureObserver(Landroid/hardware/ssp/IDaemonListenerAggregatorGesture;)V

    .line 68
    invoke-static {}, Landroid/hardware/ssp/DaemonAggregatorContext;->getInstance()Landroid/hardware/ssp/DaemonAggregatorContext;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorContext;->getGestureAggregator()Landroid/hardware/ssp/DaemonAggregatorGesture;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorGesture;->start()V

    .line 71
    :cond_0
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonAggregator;->start()V

    .line 72
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonAggregator;->stop()V

    .line 83
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonAggregator;->isRun()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-static {}, Landroid/hardware/ssp/DaemonAggregatorContext;->getInstance()Landroid/hardware/ssp/DaemonAggregatorContext;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorContext;->getGestureAggregator()Landroid/hardware/ssp/DaemonAggregatorGesture;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorGesture;->stop()V

    .line 89
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerObserver;->getInstance()Landroid/hardware/ssp/DaemonManagerObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonManagerObserver;->getAggregatorObserver()Landroid/hardware/ssp/DaemonObserverAggregator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/ssp/DaemonObserverAggregator;->removeMotionObserver(Landroid/hardware/ssp/IDaemonListenerAggregatorMotion;)V

    .line 91
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerObserver;->getInstance()Landroid/hardware/ssp/DaemonManagerObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonManagerObserver;->getAggregatorObserver()Landroid/hardware/ssp/DaemonObserverAggregator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/ssp/DaemonObserverAggregator;->removeGestureObserver(Landroid/hardware/ssp/IDaemonListenerAggregatorGesture;)V

    goto :goto_0
.end method

.method public updateGestureContext(Landroid/hardware/ssp/DaemonContexts$SSPGesture;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "proximity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/hardware/ssp/DaemonContexts$SSPGesture;->proximity:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    .line 123
    iget v0, p0, Landroid/hardware/ssp/DaemonAggregatorNotification;->mNightMode:I

    if-ne v0, v4, :cond_2

    .line 124
    iget v0, p1, Landroid/hardware/ssp/DaemonContexts$SSPGesture;->proximity:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    .line 125
    iget v0, p0, Landroid/hardware/ssp/DaemonAggregatorNotification;->mModeChangeCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/hardware/ssp/DaemonAggregatorNotification;->mModeChangeCnt:I

    .line 129
    :goto_0
    iget v0, p0, Landroid/hardware/ssp/DaemonAggregatorNotification;->mModeChangeCnt:I

    if-lt v0, v5, :cond_0

    .line 130
    iput v2, p0, Landroid/hardware/ssp/DaemonAggregatorNotification;->mModeChangeCnt:I

    .line 131
    iput v3, p0, Landroid/hardware/ssp/DaemonAggregatorNotification;->mNightMode:I

    .line 132
    iget-object v0, p0, Landroid/hardware/ssp/DaemonAggregatorNotification;->mNotificationContext:Landroid/hardware/ssp/DaemonContexts$SSPNotification;

    iput v3, v0, Landroid/hardware/ssp/DaemonContexts$SSPNotification;->action:I

    .line 133
    invoke-direct {p0}, Landroid/hardware/ssp/DaemonAggregatorNotification;->notifyNotificationContext()V

    .line 148
    :cond_0
    :goto_1
    return-void

    .line 127
    :cond_1
    iput v2, p0, Landroid/hardware/ssp/DaemonAggregatorNotification;->mModeChangeCnt:I

    goto :goto_0

    .line 135
    :cond_2
    iget v0, p0, Landroid/hardware/ssp/DaemonAggregatorNotification;->mNightMode:I

    if-ne v0, v3, :cond_0

    .line 136
    iget v0, p1, Landroid/hardware/ssp/DaemonContexts$SSPGesture;->proximity:I

    const/16 v1, 0x32

    if-ge v0, v1, :cond_3

    .line 137
    iget v0, p0, Landroid/hardware/ssp/DaemonAggregatorNotification;->mModeChangeCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/hardware/ssp/DaemonAggregatorNotification;->mModeChangeCnt:I

    .line 141
    :goto_2
    iget v0, p0, Landroid/hardware/ssp/DaemonAggregatorNotification;->mModeChangeCnt:I

    if-lt v0, v5, :cond_0

    .line 142
    iput v2, p0, Landroid/hardware/ssp/DaemonAggregatorNotification;->mModeChangeCnt:I

    .line 143
    iput v4, p0, Landroid/hardware/ssp/DaemonAggregatorNotification;->mNightMode:I

    .line 144
    iget-object v0, p0, Landroid/hardware/ssp/DaemonAggregatorNotification;->mNotificationContext:Landroid/hardware/ssp/DaemonContexts$SSPNotification;

    iput v4, v0, Landroid/hardware/ssp/DaemonContexts$SSPNotification;->action:I

    .line 145
    invoke-direct {p0}, Landroid/hardware/ssp/DaemonAggregatorNotification;->notifyNotificationContext()V

    goto :goto_1

    .line 139
    :cond_3
    iput v2, p0, Landroid/hardware/ssp/DaemonAggregatorNotification;->mModeChangeCnt:I

    goto :goto_2
.end method

.method public updateMotionContext(Landroid/hardware/ssp/DaemonContexts$SSPMotion;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 153
    iget v0, p1, Landroid/hardware/ssp/DaemonContexts$SSPMotion;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget v0, p0, Landroid/hardware/ssp/DaemonAggregatorNotification;->mNightMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 161
    iget-object v0, p0, Landroid/hardware/ssp/DaemonAggregatorNotification;->mNotificationContext:Landroid/hardware/ssp/DaemonContexts$SSPNotification;

    const/4 v1, 0x2

    iput v1, v0, Landroid/hardware/ssp/DaemonContexts$SSPNotification;->action:I

    .line 162
    invoke-direct {p0}, Landroid/hardware/ssp/DaemonAggregatorNotification;->notifyNotificationContext()V

    goto :goto_0
.end method
