.class public Lcom/sec/android/facedetection/FaceDetectionService;
.super Lcom/sec/android/facedetection/IFaceDetectionService$Stub;
.source "FaceDetectionService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Lcom/sec/android/seccamera/SecCamera$FaceDetectionListener;
.implements Lcom/sec/android/seccamera/SecCamera$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;
    }
.end annotation


# static fields
.field private static final FDS_DISABLE:Z = true

.field private static final MAX_RETRY:I = 0x2

.field private static final NO_TIMEOUT:Z = true

.field public static final START_CAMERA:I = 0x1

.field public static final START_FD_ONE_EYE:I = 0x3

.field public static final START_FD_TWO_EYE:I = 0x4

.field public static final STOP_CAMERA:I = 0x0

.field public static final STOP_FD:I = 0x2


# instance fields
.field private final TAG:Ljava/lang/String;

.field final callback:Ljava/util/concurrent/locks/Condition;

.field final complete:Ljava/util/concurrent/locks/Condition;

.field final lock:Ljava/util/concurrent/locks/Lock;

.field final lock2:Ljava/util/concurrent/locks/Lock;

.field private mCallbackThread:Landroid/os/HandlerThread;

.field private mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

.field private mContext:Landroid/content/Context;

.field private mCurrentDeviceOrientation:I

.field private mDegreeOffset:I

.field private mFaces:[Lcom/sec/android/facedetection/SecFace;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLastDeviceOrientation:I

.field private mMainHandler:Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;

.field private mNumOfListener:I

.field private mStatusService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/high16 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 301
    invoke-direct {p0}, Lcom/sec/android/facedetection/IFaceDetectionService$Stub;-><init>()V

    .line 80
    const-string v1, "FaceDetectionService"

    iput-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->TAG:Ljava/lang/String;

    .line 106
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->lock:Ljava/util/concurrent/locks/Lock;

    .line 107
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->lock2:Ljava/util/concurrent/locks/Lock;

    .line 108
    iget-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->complete:Ljava/util/concurrent/locks/Condition;

    .line 109
    iget-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->lock2:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->callback:Ljava/util/concurrent/locks/Condition;

    .line 302
    iput-object p1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mContext:Landroid/content/Context;

    .line 303
    iput-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    .line 304
    iput v3, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mNumOfListener:I

    .line 305
    iput-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mFaces:[Lcom/sec/android/facedetection/SecFace;

    .line 307
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "FaceDetection Handler"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 308
    iget-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 310
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "FaceDetection Callback Handler"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mCallbackThread:Landroid/os/HandlerThread;

    .line 311
    iget-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 313
    new-instance v1, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;

    iget-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, p0, v2}, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;-><init>(Lcom/sec/android/facedetection/FaceDetectionService;Lcom/sec/android/facedetection/FaceDetectionService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mMainHandler:Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;

    .line 315
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->progressDialog:Landroid/app/ProgressDialog;

    .line 316
    iget-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/sec/android/facedetection/FaceDetectionService$1;

    invoke-direct {v2, p0}, Lcom/sec/android/facedetection/FaceDetectionService$1;-><init>(Lcom/sec/android/facedetection/FaceDetectionService;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 322
    iget-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 323
    iget-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 324
    iget-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->progressDialog:Landroid/app/ProgressDialog;

    const-string v2, "Fatal System Error!\nNow Dumping Log...\nDo not turn off!\nIt will take about 1 min."

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 325
    iget-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 326
    iget-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 328
    iget-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const-string v2, "Error Dialog"

    invoke-virtual {v1, v2}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 330
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mHandler:Landroid/os/Handler;

    .line 332
    iget-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 333
    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, "FaceDetectionService"

    invoke-virtual {v0, v4, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 334
    const-string v1, "statusbar"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mStatusService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 336
    const-string v1, "FaceDetectionService"

    const-string v2, "FaceDetectionService Started."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/facedetection/FaceDetectionService;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/facedetection/FaceDetectionService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/facedetection/FaceDetectionService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private closeCamera()V
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mMainHandler:Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->removeMessages(I)V

    .line 392
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/facedetection/FaceDetectionService;->sendMessageAndWait(I)V

    .line 393
    return-void
.end method

.method private declared-synchronized decreaseListener()V
    .locals 2

    .prologue
    .line 413
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mNumOfListener:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mNumOfListener:I

    .line 414
    iget v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mNumOfListener:I

    if-nez v0, :cond_1

    .line 416
    invoke-direct {p0}, Lcom/sec/android/facedetection/FaceDetectionService;->closeCamera()V

    .line 417
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/facedetection/FaceDetectionService;->showIcon(Z)V

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 420
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 421
    const-string v0, "FaceDetectionService"

    const-string v1, "mWakeLock.release() in FD"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    :cond_1
    monitor-exit p0

    return-void

    .line 413
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getFaceInfoInternal(Z)[Lcom/sec/android/facedetection/SecFace;
    .locals 1
    .parameter "needOneEye"

    .prologue
    const/4 v0, -0x1

    .line 455
    invoke-direct {p0, p1, v0, v0}, Lcom/sec/android/facedetection/FaceDetectionService;->getFaceInfoInternal(ZII)[Lcom/sec/android/facedetection/SecFace;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getFaceInfoInternal(ZII)[Lcom/sec/android/facedetection/SecFace;
    .locals 7
    .parameter "needOneEye"
    .parameter "last"
    .parameter "current"

    .prologue
    const/4 v6, 0x2

    .line 460
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 463
    :cond_0
    const/4 v2, 0x0

    new-array v1, v2, [Lcom/sec/android/facedetection/SecFace;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 531
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v1

    .line 489
    :cond_2
    :try_start_1
    iput p2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mLastDeviceOrientation:I

    .line 490
    iput p3, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mCurrentDeviceOrientation:I

    .line 492
    if-eqz p1, :cond_5

    .line 493
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/sec/android/facedetection/FaceDetectionService;->sendMessageAndWait(I)V

    .line 497
    :goto_1
    iget-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->lock2:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 500
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mFaces:[Lcom/sec/android/facedetection/SecFace;

    .line 501
    const-string v2, "FaceDetectionService"

    const-string v3, "WAIT FOR CALLBACK"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 502
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, v6, :cond_4

    .line 505
    :try_start_2
    iget-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->callback:Ljava/util/concurrent/locks/Condition;

    const-wide/32 v3, 0x23c34600

    invoke-interface {v2, v3, v4}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_3

    const-string v2, "FaceDetectionService"

    const-string v3, "No Callback!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 510
    :cond_3
    :goto_3
    :try_start_3
    iget-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mFaces:[Lcom/sec/android/facedetection/SecFace;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mFaces:[Lcom/sec/android/facedetection/SecFace;

    array-length v2, v2

    if-lez v2, :cond_6

    .line 512
    :cond_4
    const-string v2, "FaceDetectionService"

    const-string v3, "DONE!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mFaces:[Lcom/sec/android/facedetection/SecFace;

    .line 516
    .local v1, ret:[Lcom/sec/android/facedetection/SecFace;
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/sec/android/facedetection/FaceDetectionService;->sendMessageAndWait(I)V

    .line 518
    iget-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->lock2:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 521
    if-eqz v1, :cond_7

    array-length v2, v1

    if-lez v2, :cond_7

    .line 523
    iget-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "faceservice_disabled"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 530
    :goto_4
    if-nez v1, :cond_1

    const/4 v2, 0x0

    new-array v1, v2, [Lcom/sec/android/facedetection/SecFace;

    goto :goto_0

    .line 495
    .end local v0           #i:I
    .end local v1           #ret:[Lcom/sec/android/facedetection/SecFace;
    :cond_5
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/sec/android/facedetection/FaceDetectionService;->sendMessageAndWait(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 460
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 502
    .restart local v0       #i:I
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 527
    .restart local v1       #ret:[Lcom/sec/android/facedetection/SecFace;
    :cond_7
    :try_start_4
    iget-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "faceservice_failed"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 507
    .end local v1           #ret:[Lcom/sec/android/facedetection/SecFace;
    :catch_0
    move-exception v2

    goto :goto_3
.end method

.method private declared-synchronized increaseListener()V
    .locals 3

    .prologue
    .line 397
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mNumOfListener:I

    if-nez v0, :cond_2

    .line 399
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 401
    const-string v0, "FaceDetectionService"

    const-string v1, "mWakeLock.acquire() in FD"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/facedetection/FaceDetectionService;->showIcon(Z)V

    .line 405
    :cond_1
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "faceservice_enabled"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 406
    invoke-direct {p0}, Lcom/sec/android/facedetection/FaceDetectionService;->openCamera()V

    .line 408
    :cond_2
    iget v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mNumOfListener:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mNumOfListener:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    monitor-exit p0

    return-void

    .line 397
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private openCamera()V
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mMainHandler:Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->removeMessages(I)V

    .line 386
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/facedetection/FaceDetectionService;->sendMessageAndWait(I)V

    .line 387
    return-void
.end method

.method private sendMessageAndWait(I)V
    .locals 3
    .parameter "what"

    .prologue
    .line 351
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 352
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mMainHandler:Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;

    invoke-virtual {v0, p1}, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->sendEmptyMessage(I)Z

    .line 353
    const-string v0, "FaceDetectionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wait for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->complete:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->awaitUninterruptibly()V

    .line 379
    const-string v0, "FaceDetectionService"

    const-string v1, "DONE!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 381
    return-void
.end method

.method private showErrorPopup()V
    .locals 2

    .prologue
    .line 572
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/facedetection/FaceDetectionService$2;

    invoke-direct {v1, p0}, Lcom/sec/android/facedetection/FaceDetectionService$2;-><init>(Lcom/sec/android/facedetection/FaceDetectionService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 612
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 613
    return-void
.end method

.method private showIcon(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 342
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mStatusService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mStatusService:Lcom/android/internal/statusbar/IStatusBarService;

    const-string v1, "face"

    invoke-interface {v0, v1, p1}, Lcom/android/internal/statusbar/IStatusBarService;->setIconVisibility(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 345
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 545
    const-string v0, "FaceDetectionService"

    const-string v1, "FaceDetectionClient died!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    invoke-direct {p0}, Lcom/sec/android/facedetection/FaceDetectionService;->decreaseListener()V

    .line 547
    return-void
.end method

.method public disable(Lcom/sec/android/facedetection/IFaceDetectionClient;)V
    .locals 3
    .parameter "client"

    .prologue
    .line 442
    const-string v1, "FaceDetectionService"

    const-string v2, "disabled"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 451
    :goto_0
    return-void

    .line 446
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/sec/android/facedetection/IFaceDetectionClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/facedetection/FaceDetectionService;->decreaseListener()V

    goto :goto_0

    .line 447
    :catch_0
    move-exception v0

    .line 448
    .local v0, e:Ljava/util/NoSuchElementException;
    const-string v1, "FaceDetectionService"

    const-string v2, "unlinkToDeath failed."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 551
    const-string v0, "FaceDetectionService"

    const-string v1, "DUMP Face detection service."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump ThemeService from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " without permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 568
    :goto_0
    return-void

    .line 562
    :cond_0
    const-string v0, "FaceDetectionService is up and running!"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " # of clients: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mNumOfListener:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 564
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_1

    .line 565
    const-string v0, " Camera is opened"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 567
    :cond_1
    const-string v0, " Camera is not opened"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public enable(Lcom/sec/android/facedetection/IFaceDetectionClient;)V
    .locals 3
    .parameter "client"

    .prologue
    .line 429
    const-string v1, "FaceDetectionService"

    const-string v2, "enabled"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 438
    :goto_0
    return-void

    .line 433
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/sec/android/facedetection/IFaceDetectionClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/facedetection/FaceDetectionService;->increaseListener()V

    goto :goto_0

    .line 434
    :catch_0
    move-exception v0

    .line 435
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "FaceDetectionService"

    const-string v2, "linkToDeath failed."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getFaceInfo()[Lcom/sec/android/facedetection/SecFace;
    .locals 1

    .prologue
    .line 536
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/facedetection/FaceDetectionService;->getFaceInfoInternal(Z)[Lcom/sec/android/facedetection/SecFace;

    move-result-object v0

    return-object v0
.end method

.method public getFaceInfoHint(II)[Lcom/sec/android/facedetection/SecFace;
    .locals 1
    .parameter "last"
    .parameter "current"

    .prologue
    .line 541
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/android/facedetection/FaceDetectionService;->getFaceInfoInternal(ZII)[Lcom/sec/android/facedetection/SecFace;

    move-result-object v0

    return-object v0
.end method

.method public onError(ILcom/sec/android/seccamera/SecCamera;)V
    .locals 4
    .parameter "error"
    .parameter "camera"

    .prologue
    const/4 v3, 0x1

    .line 291
    const-string v0, "FaceDetectionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    .line 293
    iget v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mNumOfListener:I

    if-eqz v0, :cond_0

    .line 295
    const-string v0, "FaceDetectionService"

    const-string v1, "Whatever happened to camera service, I will try to re-open camera! I have a client waiting for my service."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mMainHandler:Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;

    invoke-virtual {v0, v3}, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->removeMessages(I)V

    .line 297
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mMainHandler:Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 299
    :cond_0
    return-void
.end method

.method public onFaceDetection([Lcom/sec/android/seccamera/SecCamera$Face;Lcom/sec/android/seccamera/SecCamera;)V
    .locals 9
    .parameter "faces"
    .parameter "camera"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->lock2:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 262
    if-nez p1, :cond_0

    .line 285
    :goto_0
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->callback:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 286
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->lock2:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 287
    return-void

    .line 268
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Lcom/sec/android/facedetection/SecFace;

    iput-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mFaces:[Lcom/sec/android/facedetection/SecFace;

    .line 270
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    array-length v0, p1

    if-ge v7, v0, :cond_1

    .line 273
    iget-object v8, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mFaces:[Lcom/sec/android/facedetection/SecFace;

    new-instance v0, Lcom/sec/android/facedetection/SecFace;

    aget-object v1, p1, v7

    iget-object v1, v1, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    aget-object v2, p1, v7

    iget v2, v2, Lcom/sec/android/seccamera/SecCamera$Face;->id:I

    aget-object v3, p1, v7

    iget v3, v3, Lcom/sec/android/seccamera/SecCamera$Face;->score:I

    aget-object v4, p1, v7

    iget-object v4, v4, Lcom/sec/android/seccamera/SecCamera$Face;->leftEye:Landroid/graphics/Point;

    aget-object v5, p1, v7

    iget-object v5, v5, Lcom/sec/android/seccamera/SecCamera$Face;->rightEye:Landroid/graphics/Point;

    aget-object v6, p1, v7

    iget-object v6, v6, Lcom/sec/android/seccamera/SecCamera$Face;->mouth:Landroid/graphics/Point;

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/facedetection/SecFace;-><init>(Landroid/graphics/Rect;IILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    aput-object v0, v8, v7

    .line 275
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mFaces:[Lcom/sec/android/facedetection/SecFace;

    aget-object v0, v0, v7

    aget-object v1, p1, v7

    iget v1, v1, Lcom/sec/android/seccamera/SecCamera$Face;->score:I

    iput v1, v0, Lcom/sec/android/facedetection/SecFace;->orientation:I

    .line 270
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 281
    :cond_1
    const-string v0, "FaceDetectionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFaceDetection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mFaces:[Lcom/sec/android/facedetection/SecFace;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
