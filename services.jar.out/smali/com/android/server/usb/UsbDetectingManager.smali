.class public Lcom/android/server/usb/UsbDetectingManager;
.super Ljava/lang/Object;
.source "UsbDetectingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbDetectingManager$UsbDetectingHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final FUNCTIONS_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/functions"

.field private static final HOSTDIRVER_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/host_state"

.field private static final MSG_BOOT_COMPLETED:I = 0x4

.field private static final MSG_START_ACTIVITY:I = 0x1

.field private static final MSG_UPDATE_STATE:I = 0x0

.field private static final START_ACTIVITY_DELAY:I = 0x13880

.field private static final TAG:Ljava/lang/String; = null

.field private static final USB_DETECTING_UEVENT:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/host_driver_install_noti"


# instance fields
.field private mBootCompleted:Z

.field private mBootStartActivity:Z

.field private mConfigured:Z

.field private mConnected:Z

.field private final mContext:Landroid/content/Context;

.field private mFunctions:Ljava/lang/String;

.field private mHadPlayedActivity:Z

.field private mHandler:Lcom/android/server/usb/UsbDetectingManager$UsbDetectingHandler;

.field private mStartActivity:Z

.field private final mUEventDetectingObserver:Landroid/os/UEventObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/android/server/usb/UsbDetectingManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbDetectingManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean v1, p0, Lcom/android/server/usb/UsbDetectingManager;->mConnected:Z

    .line 53
    iput-boolean v1, p0, Lcom/android/server/usb/UsbDetectingManager;->mConfigured:Z

    .line 54
    iput-boolean v1, p0, Lcom/android/server/usb/UsbDetectingManager;->mStartActivity:Z

    .line 55
    iput-boolean v1, p0, Lcom/android/server/usb/UsbDetectingManager;->mBootCompleted:Z

    .line 56
    iput-boolean v1, p0, Lcom/android/server/usb/UsbDetectingManager;->mBootStartActivity:Z

    .line 57
    iput-boolean v1, p0, Lcom/android/server/usb/UsbDetectingManager;->mHadPlayedActivity:Z

    .line 240
    new-instance v1, Lcom/android/server/usb/UsbDetectingManager$1;

    invoke-direct {v1, p0}, Lcom/android/server/usb/UsbDetectingManager$1;-><init>(Lcom/android/server/usb/UsbDetectingManager;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbDetectingManager;->mUEventDetectingObserver:Landroid/os/UEventObserver;

    .line 63
    iput-object p1, p0, Lcom/android/server/usb/UsbDetectingManager;->mContext:Landroid/content/Context;

    .line 66
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UsbDetectingManager"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 67
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 68
    new-instance v1, Lcom/android/server/usb/UsbDetectingManager$UsbDetectingHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/usb/UsbDetectingManager$UsbDetectingHandler;-><init>(Lcom/android/server/usb/UsbDetectingManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbDetectingManager;->mHandler:Lcom/android/server/usb/UsbDetectingManager$UsbDetectingHandler;

    .line 69
    return-void
.end method

.method private ContainsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "str"
    .parameter "function"

    .prologue
    const/16 v5, 0x2c

    const/4 v3, 0x0

    .line 229
    if-nez p1, :cond_1

    .line 236
    :cond_0
    :goto_0
    return v3

    .line 230
    :cond_1
    move-object v1, p1

    .line 231
    .local v1, functions:Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 232
    .local v2, index:I
    if-ltz v2, :cond_0

    .line 233
    if-lez v2, :cond_2

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_0

    .line 234
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int v0, v2, v4

    .line 235
    .local v0, charAfter:I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_0

    .line 236
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/usb/UsbDetectingManager;)Lcom/android/server/usb/UsbDetectingManager$UsbDetectingHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/usb/UsbDetectingManager;->mHandler:Lcom/android/server/usb/UsbDetectingManager$UsbDetectingHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/usb/UsbDetectingManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/usb/UsbDetectingManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/usb/UsbDetectingManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/server/usb/UsbDetectingManager;->installedHostDriver()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/usb/UsbDetectingManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/server/usb/UsbDetectingManager;->findNeedingDriver()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/usb/UsbDetectingManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDetectingManager;->mHadPlayedActivity:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/android/server/usb/UsbDetectingManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDetectingManager;->mBootStartActivity:Z

    return p1
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/server/usb/UsbDetectingManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/usb/UsbDetectingManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDetectingManager;->mConnected:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/usb/UsbDetectingManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDetectingManager;->mConnected:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/usb/UsbDetectingManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDetectingManager;->mConfigured:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/usb/UsbDetectingManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDetectingManager;->mConfigured:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/usb/UsbDetectingManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDetectingManager;->mBootCompleted:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/usb/UsbDetectingManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDetectingManager;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/usb/UsbDetectingManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/server/usb/UsbDetectingManager;->startActivity()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/usb/UsbDetectingManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/server/usb/UsbDetectingManager;->cancelActivity()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/usb/UsbDetectingManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDetectingManager;->mStartActivity:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/usb/UsbDetectingManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDetectingManager;->mStartActivity:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/usb/UsbDetectingManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/server/usb/UsbDetectingManager;->getFunctions()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final cancelActivity()V
    .locals 2

    .prologue
    .line 102
    sget-object v0, Lcom/android/server/usb/UsbDetectingManager;->TAG:Ljava/lang/String;

    const-string v1, "cancelActivity"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/android/server/usb/UsbDetectingManager;->mHandler:Lcom/android/server/usb/UsbDetectingManager$UsbDetectingHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbDetectingManager$UsbDetectingHandler;->removeMessages(I)V

    .line 104
    return-void
.end method

.method private final findNeedingDriver()Z
    .locals 4

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/android/server/usb/UsbDetectingManager;->getFunctions()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, functions:Ljava/lang/String;
    sget-object v1, Lcom/android/server/usb/UsbDetectingManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "findNeedingDriver : functions = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const-string v1, "mtp"

    invoke-direct {p0, v0, v1}, Lcom/android/server/usb/UsbDetectingManager;->ContainsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "acm"

    invoke-direct {p0, v0, v1}, Lcom/android/server/usb/UsbDetectingManager;->ContainsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    :cond_0
    const/4 v1, 0x1

    .line 193
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final getFunctions()Ljava/lang/String;
    .locals 4

    .prologue
    .line 202
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/android_usb/android0/functions"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 206
    :goto_0
    return-object v1

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, e:Ljava/io/IOException;
    sget-object v1, Lcom/android/server/usb/UsbDetectingManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFunctions : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    new-instance v1, Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final installedHostDriver()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 214
    :try_start_0
    new-instance v5, Ljava/io/File;

    const-string v6, "/sys/class/android_usb/android0/host_state"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, installed:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v2

    .line 216
    .local v2, state:I
    if-nez v2, :cond_0

    .line 225
    .end local v1           #installed:Ljava/lang/String;
    .end local v2           #state:I
    :goto_0
    return v3

    .restart local v1       #installed:Ljava/lang/String;
    .restart local v2       #state:I
    :cond_0
    move v3, v4

    .line 217
    goto :goto_0

    .line 218
    .end local v1           #installed:Ljava/lang/String;
    .end local v2           #state:I
    :catch_0
    move-exception v0

    .line 219
    .local v0, e:Ljava/io/IOException;
    sget-object v4, Lcom/android/server/usb/UsbDetectingManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "installedHostDriver : can\'t open"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 220
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 221
    .local v0, e:Ljava/lang/NumberFormatException;
    sget-object v4, Lcom/android/server/usb/UsbDetectingManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "installedHostDriver : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 222
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v0

    .line 223
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    sget-object v4, Lcom/android/server/usb/UsbDetectingManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "installedHostDriver : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private final startActivity()V
    .locals 4

    .prologue
    .line 94
    sget-object v1, Lcom/android/server/usb/UsbDetectingManager;->TAG:Ljava/lang/String;

    const-string v2, "startActivity "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v1, p0, Lcom/android/server/usb/UsbDetectingManager;->mHandler:Lcom/android/server/usb/UsbDetectingManager$UsbDetectingHandler;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 96
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/usb/UsbDetectingManager;->mHandler:Lcom/android/server/usb/UsbDetectingManager$UsbDetectingHandler;

    const-wide/32 v2, 0x13880

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/usb/UsbDetectingManager$UsbDetectingHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    sget-object v1, Lcom/android/server/usb/UsbDetectingManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startActivity :: failed to send message"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .locals 2
    .parameter "fd"
    .parameter "pw"

    .prologue
    .line 276
    const-string v0, "  USB Detecting State:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mConnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/usb/UsbDetectingManager;->mConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mStartActivity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/usb/UsbDetectingManager;->mStartActivity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mHadPlayedActivity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/usb/UsbDetectingManager;->mHadPlayedActivity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method public setCurrentState(Ljava/lang/String;)V
    .locals 6
    .parameter "state"

    .prologue
    .line 74
    const-string v3, "DISCONNECTED"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 75
    const/4 v1, 0x0

    .line 76
    .local v1, connected:I
    const/4 v0, 0x0

    .line 87
    .local v0, configured:I
    :goto_0
    iget-object v3, p0, Lcom/android/server/usb/UsbDetectingManager;->mHandler:Lcom/android/server/usb/UsbDetectingManager$UsbDetectingHandler;

    const/4 v4, 0x0

    invoke-static {v3, v4, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    .line 88
    .local v2, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/usb/UsbDetectingManager;->mHandler:Lcom/android/server/usb/UsbDetectingManager$UsbDetectingHandler;

    invoke-virtual {v3, v2}, Lcom/android/server/usb/UsbDetectingManager$UsbDetectingHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 89
    sget-object v3, Lcom/android/server/usb/UsbDetectingManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCurrentState :: failed to send message"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .end local v0           #configured:I
    .end local v1           #connected:I
    .end local v2           #msg:Landroid/os/Message;
    :cond_0
    :goto_1
    return-void

    .line 77
    :cond_1
    const-string v3, "CONNECTED"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 78
    const/4 v1, 0x1

    .line 79
    .restart local v1       #connected:I
    const/4 v0, 0x0

    .restart local v0       #configured:I
    goto :goto_0

    .line 80
    .end local v0           #configured:I
    .end local v1           #connected:I
    :cond_2
    const-string v3, "CONFIGURED"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 81
    const/4 v1, 0x1

    .line 82
    .restart local v1       #connected:I
    const/4 v0, 0x1

    .restart local v0       #configured:I
    goto :goto_0

    .line 84
    .end local v0           #configured:I
    .end local v1           #connected:I
    :cond_3
    sget-object v3, Lcom/android/server/usb/UsbDetectingManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
