.class Lcom/android/internal/app/ShutdownThread$Log;
.super Landroid/os/Handler;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ShutdownThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Log"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ShutdownDelay"

.field private static handler:Lcom/android/internal/app/ShutdownThread$Log;

.field private static state:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 661
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/app/ShutdownThread$Log;->handler:Lcom/android/internal/app/ShutdownThread$Log;

    .line 662
    const-string v0, ""

    sput-object v0, Lcom/android/internal/app/ShutdownThread$Log;->state:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 664
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 734
    invoke-static {p1}, Lcom/android/internal/app/ShutdownThread$Log;->setMessage(Ljava/lang/String;)V

    .line 735
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 709
    invoke-static {p1}, Lcom/android/internal/app/ShutdownThread$Log;->setMessage(Ljava/lang/String;)V

    .line 710
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 714
    invoke-static {p1}, Lcom/android/internal/app/ShutdownThread$Log;->setMessage(Ljava/lang/String;)V

    .line 715
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method static i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 719
    invoke-static {p1}, Lcom/android/internal/app/ShutdownThread$Log;->setMessage(Ljava/lang/String;)V

    .line 720
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static setMessage(Ljava/lang/String;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 676
    sput-object p0, Lcom/android/internal/app/ShutdownThread$Log;->state:Ljava/lang/String;

    .line 677
    sget-object v0, Lcom/android/internal/app/ShutdownThread$Log;->handler:Lcom/android/internal/app/ShutdownThread$Log;

    if-nez v0, :cond_0

    .line 681
    :goto_0
    return-void

    .line 679
    :cond_0
    sget-object v0, Lcom/android/internal/app/ShutdownThread$Log;->handler:Lcom/android/internal/app/ShutdownThread$Log;

    invoke-virtual {v0, v3}, Lcom/android/internal/app/ShutdownThread$Log;->removeMessages(I)V

    .line 680
    sget-object v0, Lcom/android/internal/app/ShutdownThread$Log;->handler:Lcom/android/internal/app/ShutdownThread$Log;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/app/ShutdownThread$Log;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public static startState()V
    .locals 4

    .prologue
    .line 684
    sget-object v0, Lcom/android/internal/app/ShutdownThread$Log;->handler:Lcom/android/internal/app/ShutdownThread$Log;

    if-nez v0, :cond_0

    .line 685
    const-string v0, "ShutdownDelay"

    const-string/jumbo v1, "start state"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    new-instance v0, Lcom/android/internal/app/ShutdownThread$Log;

    invoke-direct {v0}, Lcom/android/internal/app/ShutdownThread$Log;-><init>()V

    sput-object v0, Lcom/android/internal/app/ShutdownThread$Log;->handler:Lcom/android/internal/app/ShutdownThread$Log;

    .line 691
    sget-object v0, Lcom/android/internal/app/ShutdownThread$Log;->handler:Lcom/android/internal/app/ShutdownThread$Log;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ShutdownThread$Log;->sendEmptyMessage(I)Z

    .line 692
    sget-object v0, Lcom/android/internal/app/ShutdownThread$Log;->handler:Lcom/android/internal/app/ShutdownThread$Log;

    new-instance v1, Lcom/android/internal/app/ShutdownThread$Log$1;

    invoke-direct {v1}, Lcom/android/internal/app/ShutdownThread$Log$1;-><init>()V

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ShutdownThread$Log;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 701
    :goto_0
    return-void

    .line 688
    :cond_0
    const-string v0, "ShutdownDelay"

    const-string v1, "duplicate startstate"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 704
    invoke-static {p1}, Lcom/android/internal/app/ShutdownThread$Log;->setMessage(Ljava/lang/String;)V

    .line 705
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 724
    invoke-static {p1}, Lcom/android/internal/app/ShutdownThread$Log;->setMessage(Ljava/lang/String;)V

    .line 725
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 729
    invoke-static {p1}, Lcom/android/internal/app/ShutdownThread$Log;->setMessage(Ljava/lang/String;)V

    .line 730
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 668
    const/4 v0, 0x1

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/app/ShutdownThread$Log;->sendEmptyMessageDelayed(IJ)Z

    .line 669
    sget-object v0, Lcom/android/internal/app/ShutdownThread$Log;->state:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 670
    const-string v0, "ShutdownDelay"

    sget-object v1, Lcom/android/internal/app/ShutdownThread$Log;->state:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    :cond_0
    return-void
.end method
