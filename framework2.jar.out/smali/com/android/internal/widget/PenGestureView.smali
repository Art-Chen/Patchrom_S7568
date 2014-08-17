.class public Lcom/android/internal/widget/PenGestureView;
.super Landroid/view/View;
.source "PenGestureView.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final KEY_IS_LOCKSCREEN_SHOWING:Ljava/lang/String; = "is_lockscreen_showing"

.field private static final KEY_IS_SECURE_ENABLED:Ljava/lang/String; = "is_secure_enabled"

.field private static final MSG_BOOT_COMPLETED:I = 0x12d

.field private static final PEN_GESTURE_LINE_LIMIT:I = 0x64

.field private static final PEN_GESTURE_SPLIT_SCREEN_RATIO:I = 0x4

.field public static final SINGLE_SCREEN_CAPTURE_OFF:Ljava/lang/String; = "android.intent.action.SINGLE_SCREEN_CAPTURE_OFF"

.field public static final SINGLE_SCREEN_CAPTURE_ON:Ljava/lang/String; = "android.intent.action.SINGLE_SCREEN_CAPTURE_ON"

.field private static final TAG:Ljava/lang/String; = "PenGesture"


# instance fields
.field private mBootCompleted:Z

.field mCaptureReceiver:Landroid/content/BroadcastReceiver;

.field private mDisplay:Landroid/view/Display;

.field private mDoubleTapIntent:Landroid/content/Intent;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field mGesturePad:Ljava/lang/Runnable;

.field private mGesturePadIntent:Landroid/content/Intent;

.field mHandler:Landroid/os/Handler;

.field private mHeightMovingSlop:I

.field mInstrumentation:Landroid/app/Instrumentation;

.field private mIsPhone:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLongPressIntent:Landroid/content/Intent;

.field private mOutofHorizonThreshold:Z

.field private mOutofVerticalThresholdToDown:Z

.field private mOutofVerticalThresholdToUp:Z

.field mPenDoubleTap:Ljava/lang/Runnable;

.field private mPenGestureEventDispatchThread:Ljava/lang/Thread;

.field mPenLongPress:Ljava/lang/Runnable;

.field private mPenMemoActionIntent:Landroid/content/Intent;

.field mScreenCaptureOn:Z

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mTheshold:Z

.field private mWidthMovingSlop:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/internal/widget/PenGestureView;->DEBUG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 109
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 73
    iput-boolean v6, p0, Lcom/android/internal/widget/PenGestureView;->mOutofVerticalThresholdToUp:Z

    .line 74
    iput-boolean v6, p0, Lcom/android/internal/widget/PenGestureView;->mOutofVerticalThresholdToDown:Z

    .line 75
    iput-boolean v6, p0, Lcom/android/internal/widget/PenGestureView;->mOutofHorizonThreshold:Z

    .line 77
    iput-boolean v7, p0, Lcom/android/internal/widget/PenGestureView;->mBootCompleted:Z

    .line 86
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/widget/PenGestureView;->mPenGestureEventDispatchThread:Ljava/lang/Thread;

    .line 90
    iput-boolean v7, p0, Lcom/android/internal/widget/PenGestureView;->mIsPhone:Z

    .line 93
    iput-boolean v6, p0, Lcom/android/internal/widget/PenGestureView;->mScreenCaptureOn:Z

    .line 97
    new-instance v5, Lcom/android/internal/widget/PenGestureView$1;

    invoke-direct {v5, p0}, Lcom/android/internal/widget/PenGestureView$1;-><init>(Lcom/android/internal/widget/PenGestureView;)V

    iput-object v5, p0, Lcom/android/internal/widget/PenGestureView;->mCaptureReceiver:Landroid/content/BroadcastReceiver;

    .line 300
    new-instance v5, Lcom/android/internal/widget/PenGestureView$5;

    invoke-direct {v5, p0}, Lcom/android/internal/widget/PenGestureView$5;-><init>(Lcom/android/internal/widget/PenGestureView;)V

    iput-object v5, p0, Lcom/android/internal/widget/PenGestureView;->mPenLongPress:Ljava/lang/Runnable;

    .line 336
    new-instance v5, Lcom/android/internal/widget/PenGestureView$6;

    invoke-direct {v5, p0}, Lcom/android/internal/widget/PenGestureView$6;-><init>(Lcom/android/internal/widget/PenGestureView;)V

    iput-object v5, p0, Lcom/android/internal/widget/PenGestureView;->mPenDoubleTap:Ljava/lang/Runnable;

    .line 354
    new-instance v5, Lcom/android/internal/widget/PenGestureView$7;

    invoke-direct {v5, p0}, Lcom/android/internal/widget/PenGestureView$7;-><init>(Lcom/android/internal/widget/PenGestureView;)V

    iput-object v5, p0, Lcom/android/internal/widget/PenGestureView;->mGesturePad:Ljava/lang/Runnable;

    .line 111
    new-instance v5, Lcom/android/internal/widget/PenGestureView$2;

    invoke-direct {v5, p0}, Lcom/android/internal/widget/PenGestureView$2;-><init>(Lcom/android/internal/widget/PenGestureView;)V

    iput-object v5, p0, Lcom/android/internal/widget/PenGestureView;->mHandler:Landroid/os/Handler;

    .line 122
    new-instance v5, Landroid/app/Instrumentation;

    invoke-direct {v5}, Landroid/app/Instrumentation;-><init>()V

    iput-object v5, p0, Lcom/android/internal/widget/PenGestureView;->mInstrumentation:Landroid/app/Instrumentation;

    .line 125
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 126
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    new-instance v5, Lcom/android/internal/widget/PenGestureView$3;

    invoke-direct {v5, p0}, Lcom/android/internal/widget/PenGestureView$3;-><init>(Lcom/android/internal/widget/PenGestureView;)V

    invoke-virtual {p1, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 138
    const-string v5, "keyguard"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/KeyguardManager;

    iput-object v5, p0, Lcom/android/internal/widget/PenGestureView;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 139
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v5, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/internal/widget/PenGestureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 141
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 142
    .local v3, size:Landroid/graphics/Point;
    const-string v5, "window"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/widget/PenGestureView;->mDisplay:Landroid/view/Display;

    .line 144
    iget-object v5, p0, Lcom/android/internal/widget/PenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 146
    const-string v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    .line 148
    .local v4, wm:Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface {v4}, Landroid/view/IWindowManager;->canStatusBarHide()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/widget/PenGestureView;->mIsPhone:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    iget v5, v3, Landroid/graphics/Point;->x:I

    iget v6, v3, Landroid/graphics/Point;->y:I

    if-le v5, v6, :cond_1

    .line 155
    iget v5, v3, Landroid/graphics/Point;->x:I

    div-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/android/internal/widget/PenGestureView;->mWidthMovingSlop:I

    .line 156
    iget v5, v3, Landroid/graphics/Point;->y:I

    div-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/android/internal/widget/PenGestureView;->mHeightMovingSlop:I

    .line 163
    :goto_1
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    iput-object v5, p0, Lcom/android/internal/widget/PenGestureView;->mLongPressIntent:Landroid/content/Intent;

    .line 164
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    iput-object v5, p0, Lcom/android/internal/widget/PenGestureView;->mDoubleTapIntent:Landroid/content/Intent;

    .line 165
    iget-boolean v5, p0, Lcom/android/internal/widget/PenGestureView;->mIsPhone:Z

    if-eqz v5, :cond_2

    .line 166
    iget-object v5, p0, Lcom/android/internal/widget/PenGestureView;->mLongPressIntent:Landroid/content/Intent;

    const/high16 v6, 0x1000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 167
    iget-object v5, p0, Lcom/android/internal/widget/PenGestureView;->mLongPressIntent:Landroid/content/Intent;

    const/high16 v6, 0x2000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 168
    iget-object v5, p0, Lcom/android/internal/widget/PenGestureView;->mLongPressIntent:Landroid/content/Intent;

    const-string v6, "com.diotek.screen_capture2"

    const-string v7, "com.sec.android.app.screencapture.capture.CaptureService"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    :goto_2
    iget-object v5, p0, Lcom/android/internal/widget/PenGestureView;->mDoubleTapIntent:Landroid/content/Intent;

    const-string v6, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    iget-object v5, p0, Lcom/android/internal/widget/PenGestureView;->mDoubleTapIntent:Landroid/content/Intent;

    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.diotek.mini_penmemo"

    const-string v8, "com.diotek.mini_penmemo.Mini_PenMemo_Service"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 176
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/internal/widget/PenGestureView;->mGesturePadIntent:Landroid/content/Intent;

    .line 177
    iget-object v5, p0, Lcom/android/internal/widget/PenGestureView;->mGesturePadIntent:Landroid/content/Intent;

    const-string v6, "com.sec.android.gesturepad"

    const-string v7, "com.sec.android.gesturepad.GesturePadActivity"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    iget-object v5, p0, Lcom/android/internal/widget/PenGestureView;->mGesturePadIntent:Landroid/content/Intent;

    const/high16 v6, 0x1400

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 180
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Common_EnableMobileOfficeMdm"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 181
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 182
    .local v0, captureFilter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.SINGLE_SCREEN_CAPTURE_ON"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    const-string v5, "android.intent.action.SINGLE_SCREEN_CAPTURE_OFF"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 184
    iget-object v5, p0, Lcom/android/internal/widget/PenGestureView;->mCaptureReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 187
    .end local v0           #captureFilter:Landroid/content/IntentFilter;
    :cond_0
    new-instance v5, Landroid/view/GestureDetector;

    new-instance v6, Lcom/android/internal/widget/PenGestureView$4;

    invoke-direct {v6, p0}, Lcom/android/internal/widget/PenGestureView$4;-><init>(Lcom/android/internal/widget/PenGestureView;)V

    invoke-direct {v5, p1, v6}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v5, p0, Lcom/android/internal/widget/PenGestureView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 298
    return-void

    .line 149
    :catch_0
    move-exception v1

    .line 150
    .local v1, ex:Landroid/os/RemoteException;
    const-string v5, "PenGesture"

    const-string v6, "RemoteException"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iput-boolean v7, p0, Lcom/android/internal/widget/PenGestureView;->mIsPhone:Z

    goto/16 :goto_0

    .line 159
    .end local v1           #ex:Landroid/os/RemoteException;
    :cond_1
    iget v5, v3, Landroid/graphics/Point;->y:I

    div-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/android/internal/widget/PenGestureView;->mWidthMovingSlop:I

    .line 160
    iget v5, v3, Landroid/graphics/Point;->x:I

    div-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/android/internal/widget/PenGestureView;->mHeightMovingSlop:I

    goto/16 :goto_1

    .line 170
    :cond_2
    iget-object v5, p0, Lcom/android/internal/widget/PenGestureView;->mLongPressIntent:Landroid/content/Intent;

    const-string v6, "com.diotek.screen_capture"

    const-string v7, "com.diotek.screen_capture.CaptureService"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/internal/widget/PenGestureView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/internal/widget/PenGestureView;->handleBootCompleted()V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/android/internal/widget/PenGestureView;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/widget/PenGestureView;)Lcom/android/internal/statusbar/IStatusBarService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/widget/PenGestureView;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/internal/widget/PenGestureView;Lcom/android/internal/statusbar/IStatusBarService;)Lcom/android/internal/statusbar/IStatusBarService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/internal/widget/PenGestureView;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/internal/widget/PenGestureView;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/widget/PenGestureView;->mLongPressIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/widget/PenGestureView;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/widget/PenGestureView;->mPenMemoActionIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/internal/widget/PenGestureView;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/internal/widget/PenGestureView;->mPenMemoActionIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/internal/widget/PenGestureView;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/widget/PenGestureView;->mDoubleTapIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/widget/PenGestureView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/internal/widget/PenGestureView;->isLockScreenShowing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/internal/widget/PenGestureView;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/widget/PenGestureView;->mGesturePadIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/PenGestureView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/internal/widget/PenGestureView;->mTheshold:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/widget/PenGestureView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/internal/widget/PenGestureView;->mTheshold:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/widget/PenGestureView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/internal/widget/PenGestureView;->mOutofVerticalThresholdToDown:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/internal/widget/PenGestureView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/internal/widget/PenGestureView;->mOutofVerticalThresholdToDown:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/widget/PenGestureView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/internal/widget/PenGestureView;->mOutofVerticalThresholdToUp:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/internal/widget/PenGestureView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/internal/widget/PenGestureView;->mOutofVerticalThresholdToUp:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/widget/PenGestureView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/internal/widget/PenGestureView;->mOutofHorizonThreshold:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/widget/PenGestureView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/internal/widget/PenGestureView;->mOutofHorizonThreshold:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/widget/PenGestureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/internal/widget/PenGestureView;->mWidthMovingSlop:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/widget/PenGestureView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/internal/widget/PenGestureView;->injectionKeyEvent(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/widget/PenGestureView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/internal/widget/PenGestureView;->mIsPhone:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/widget/PenGestureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/internal/widget/PenGestureView;->mHeightMovingSlop:I

    return v0
.end method

.method private handleBootCompleted()V
    .locals 1

    .prologue
    .line 423
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/PenGestureView;->mBootCompleted:Z

    .line 424
    return-void
.end method

.method private injectionKeyEvent(I)V
    .locals 2
    .parameter "key"

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/internal/widget/PenGestureView;->mPenGestureEventDispatchThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/PenGestureView;->mPenGestureEventDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    sget-boolean v0, Lcom/android/internal/widget/PenGestureView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PenGesture"

    const-string v1, "send interrupt to previous mPenGestureEventDispatchThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/PenGestureView;->mPenGestureEventDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 380
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/widget/PenGestureView$8;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/widget/PenGestureView$8;-><init>(Lcom/android/internal/widget/PenGestureView;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/internal/widget/PenGestureView;->mPenGestureEventDispatchThread:Ljava/lang/Thread;

    .line 395
    iget-object v0, p0, Lcom/android/internal/widget/PenGestureView;->mPenGestureEventDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 396
    return-void
.end method

.method private isLockScreenShowing()Z
    .locals 3

    .prologue
    .line 442
    iget-object v1, p0, Lcom/android/internal/widget/PenGestureView;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v1, :cond_0

    .line 444
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/widget/PenGestureView;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 449
    :goto_0
    return v1

    .line 445
    :catch_0
    move-exception v0

    .line 446
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "PenGesture"

    const-string v2, "Failed check isLockScreenShowing : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 449
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSecureUnlockEnabled()Z
    .locals 3

    .prologue
    .line 431
    iget-object v1, p0, Lcom/android/internal/widget/PenGestureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v1, :cond_0

    .line 433
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/widget/PenGestureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 438
    :goto_0
    return v1

    .line 434
    :catch_0
    move-exception v0

    .line 435
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "PenGesture"

    const-string v2, "Failed check isSecureUnlockEnabled : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 438
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addPenEvent(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    const/4 v2, 0x2

    .line 399
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 401
    sget-boolean v1, Lcom/android/internal/widget/PenGestureView;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "PenGesture"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addPenEvent ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 403
    .local v0, action:I
    and-int/lit16 v1, v0, 0xff

    packed-switch v1, :pswitch_data_0

    .line 414
    .end local v0           #action:I
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 410
    .restart local v0       #action:I
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/widget/PenGestureView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 403
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public isBootCompleted()Z
    .locals 1

    .prologue
    .line 427
    iget-boolean v0, p0, Lcom/android/internal/widget/PenGestureView;->mBootCompleted:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 418
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/PenGestureView;->addPenEvent(Landroid/view/MotionEvent;)V

    .line 419
    const/4 v0, 0x1

    return v0
.end method
