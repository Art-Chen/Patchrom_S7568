.class public Lcom/samsung/commonimsservice/SamsungAPCommonService;
.super Ljava/lang/Object;
.source "SamsungAPCommonService.java"

# interfaces
.implements Lcom/samsung/commonimsservice/ICommonIMSService;


# static fields
.field private static final DBG:Z = true

.field public static final IMS_CONN_ACTION:Ljava/lang/String; = "com.sec.android.ims.IMSService"

.field private static final LOG_TAG:Ljava/lang/String; = "SamsungAPCommonService"

.field private static final MMTELSVCHDL:I = 0x0

.field private static final SIPURI_TYPE:Ljava/lang/String; = "0"

.field private static final SIPURI_VAL:I = 0x1

.field private static final SMS_SIP_SIPURI_PREFIX:Ljava/lang/String; = "sipuriprefix"

.field private static final SMS_SIP_URI_TYPE:Ljava/lang/String; = "uritype"

.field private static final TELURI_TYPE:Ljava/lang/String; = "1"

.field private static final TELURI_VAL:I = 0x3


# instance fields
.field private isSpeakerOn:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private final mIMSCallStateListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/commonimsservice/IIMSCallStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mIMSRegListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/commonimsservice/IIMSRegisterStateListener;",
            ">;"
        }
    .end annotation
.end field

.field mImsEventListener:Lcom/sec/android/ims/IMSEventListener;

.field private mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

.field private mMuted:Z

.field private final mServiceConnectionListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/commonimsservice/IImsServiceConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private params:Lcom/samsung/commonimsservice/ImsParams;

.field private regExpiry:I

.field private regUri:Ljava/lang/String;

.field private registrationStatus:Z

.field private serviceConnStatus:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 78
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-boolean v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->registrationStatus:Z

    .line 54
    iput-boolean v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->isSpeakerOn:Z

    .line 55
    iput-boolean v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mMuted:Z

    .line 56
    iput-boolean v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->serviceConnStatus:Z

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->regExpiry:I

    .line 60
    iput-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->regUri:Ljava/lang/String;

    .line 62
    new-instance v0, Lcom/samsung/commonimsservice/ImsParams;

    invoke-direct {v0}, Lcom/samsung/commonimsservice/ImsParams;-><init>()V

    iput-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    .line 66
    iput-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    .line 74
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;

    .line 75
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mServiceConnectionListener:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;

    .line 91
    new-instance v0, Lcom/samsung/commonimsservice/SamsungAPCommonService$1;

    invoke-direct {v0, p0}, Lcom/samsung/commonimsservice/SamsungAPCommonService$1;-><init>(Lcom/samsung/commonimsservice/SamsungAPCommonService;)V

    iput-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mConnection:Landroid/content/ServiceConnection;

    .line 159
    new-instance v0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;

    invoke-direct {v0, p0}, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;-><init>(Lcom/samsung/commonimsservice/SamsungAPCommonService;)V

    iput-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsEventListener:Lcom/sec/android/ims/IMSEventListener;

    .line 79
    iput-object p1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mContext:Landroid/content/Context;

    .line 80
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    .line 81
    invoke-direct {p0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->createSipService()V

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Lcom/sec/android/internal/ims/IIMSService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/commonimsservice/SamsungAPCommonService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->onBadRequest(I)V

    return-void
.end method

.method static synthetic access$102(Lcom/samsung/commonimsservice/SamsungAPCommonService;Lcom/sec/android/internal/ims/IIMSService;)Lcom/sec/android/internal/ims/IIMSService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mServiceConnectionListener:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/commonimsservice/SamsungAPCommonService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->serviceConnStatus:Z

    return p1
.end method

.method static synthetic access$402(Lcom/samsung/commonimsservice/SamsungAPCommonService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->registrationStatus:Z

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->getCallType(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$802(Lcom/samsung/commonimsservice/SamsungAPCommonService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->regExpiry:I

    return p1
.end method

.method static synthetic access$902(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->regUri:Ljava/lang/String;

    return-object p1
.end method

.method private createSipService()V
    .locals 4

    .prologue
    .line 85
    const-string v1, "SamsungAPCommonService"

    const-string v2, "Trying to connect to ims service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.ims.IMSService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 88
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 89
    return-void
.end method

.method private getCallType(II)I
    .locals 4
    .parameter "appType"
    .parameter "subType"

    .prologue
    const/4 v3, 0x6

    .line 1900
    const/4 v0, -0x1

    .line 1902
    .local v0, callType:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallType ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1904
    const/16 v1, 0x8

    if-ne p1, v1, :cond_4

    .line 1905
    const/4 v1, 0x5

    if-ne p2, v1, :cond_1

    .line 1906
    const/4 v0, 0x5

    .line 1920
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallType ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1922
    return v0

    .line 1907
    :cond_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    .line 1908
    const/4 v0, 0x2

    goto :goto_0

    .line 1909
    :cond_2
    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    .line 1910
    const/4 v0, 0x1

    goto :goto_0

    .line 1911
    :cond_3
    if-ne p2, v3, :cond_0

    .line 1912
    const/4 v0, 0x7

    goto :goto_0

    .line 1914
    :cond_4
    const/4 v1, 0x4

    if-ne p1, v1, :cond_5

    .line 1915
    const/4 v0, 0x2

    goto :goto_0

    .line 1916
    :cond_5
    if-ne p1, v3, :cond_0

    .line 1917
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private getDeviceSpeakerStatus()Z
    .locals 2

    .prologue
    .line 1890
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    return v0
.end method

.method private isSpeakerOn()Z
    .locals 2

    .prologue
    .line 1884
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Inside isSpeakerOn  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->isSpeakerOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1886
    iget-boolean v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->isSpeakerOn:Z

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 155
    const-string v0, "SamsungAPCommonService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-void
.end method

.method private onBadRequest(I)V
    .locals 4
    .parameter "sessionID"

    .prologue
    .line 1875
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1876
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1877
    .local v1, listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v1, :cond_0

    .line 1878
    const/16 v2, 0x190

    const-string v3, "Bad Request"

    invoke-interface {v1, p1, v2, v3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 1875
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1881
    .end local v1           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :cond_1
    return-void
.end method

.method private onCaptureSuccess(ZLjava/lang/String;)V
    .locals 6
    .parameter "isForNearEnd"
    .parameter "filename"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inside onCaptureSuccess() : nearEnd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; filename="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1176
    if-nez p2, :cond_0

    .line 1195
    :goto_0
    return-void

    .line 1179
    :cond_0
    new-array v1, v5, [Ljava/lang/String;

    .line 1180
    .local v1, path:[Ljava/lang/String;
    new-array v0, v5, [Ljava/lang/String;

    .line 1182
    .local v0, mimetype:[Ljava/lang/String;
    aput-object p2, v1, v4

    .line 1183
    if-eqz p1, :cond_1

    .line 1184
    const-string v2, "videocallimages/jpeg"

    aput-object v2, v0, v4

    .line 1189
    :goto_1
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;

    invoke-direct {v3, p0}, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;-><init>(Lcom/samsung/commonimsservice/SamsungAPCommonService;)V

    invoke-static {v2, v1, v0, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    goto :goto_0

    .line 1186
    :cond_1
    const-string v2, "videocallimages/jpeg-scramble"

    aput-object v2, v0, v4

    goto :goto_1
.end method

.method private setUriListForConference(Lcom/samsung/commonimsservice/ImsParams;Ljava/lang/String;)Lcom/samsung/commonimsservice/ImsParams;
    .locals 5
    .parameter "params"
    .parameter "peerUri"

    .prologue
    .line 1621
    const-string v3, "\\$"

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1622
    .local v2, sCallerNos:[Ljava/lang/String;
    if-eqz v2, :cond_1

    array-length v3, v2

    if-lez v3, :cond_1

    .line 1623
    array-length v1, v2

    .line 1624
    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    add-int/lit8 v3, v1, -0x1

    if-gt v0, v3, :cond_0

    .line 1625
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Individual Uris"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1626
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uri"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v4, v2, v0

    invoke-virtual {p1, v3, v4}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1624
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1628
    :cond_0
    const-string v3, "UriCount"

    invoke-virtual {p1, v3, v1}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1629
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Individual Uris"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1633
    .end local v0           #i:I
    .end local v1           #n:I
    :goto_1
    return-object p1

    .line 1631
    :cond_1
    const-string v3, "setUriListForConference returned failure"

    invoke-direct {p0, v3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateMuteState(Z)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 1894
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating mute state to ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1895
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 1896
    iput-boolean p1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mMuted:Z

    .line 1897
    return-void
.end method


# virtual methods
.method public acceptChangeRequest(I)V
    .locals 6
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1438
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v2, :cond_0

    .line 1439
    new-instance v2, Lcom/samsung/commonimsservice/IMSException;

    const-string v3, "Cannot accept change request R[Service Not Up]"

    invoke-direct {v2, v3}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1442
    :cond_0
    const/4 v0, -0x1

    .line 1443
    .local v0, callId:I
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v2}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1444
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v3, "Type"

    const-string v4, "accept"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1447
    :try_start_0
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/16 v3, 0xf

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v5}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, p1, v5}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFunc(IIILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1452
    return-void

    .line 1448
    :catch_0
    move-exception v1

    .line 1449
    .local v1, e:Landroid/os/RemoteException;
    new-instance v2, Lcom/samsung/commonimsservice/IMSException;

    const-string v3, "Accept change request failed R[Service is not up]"

    invoke-direct {v2, v3}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public addUserForConferenceCall(ILjava/lang/String;I)I
    .locals 9
    .parameter "sessionID"
    .parameter "peerUri"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1507
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v5, :cond_0

    .line 1508
    new-instance v5, Lcom/samsung/commonimsservice/IMSException;

    const-string v6, "Cannot downgrade call R[Service Not Up]"

    invoke-direct {v5, v6}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1510
    :cond_0
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "sipuriprefix"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1511
    .local v4, uriPrefix:Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "uritype"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1512
    .local v0, dialType:Ljava/lang/String;
    if-nez p2, :cond_1

    .line 1513
    new-instance v5, Lcom/samsung/commonimsservice/IMSException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot make call R[invalid URI ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1515
    :cond_1
    const/4 v3, -0x1

    .line 1516
    .local v3, sessid:I
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v5}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1518
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v5}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1519
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v6, "AppType"

    const/16 v7, 0x8

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1520
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v6, "CallType"

    const/4 v7, 0x5

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1521
    const/4 v1, 0x1

    .line 1522
    .local v1, dialTypeVal:I
    if-eqz v0, :cond_3

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1523
    const-string v5, "1"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1524
    const/4 v1, 0x3

    .line 1531
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DialType ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] DialTypeVal ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1532
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v6, "RmtUriType"

    invoke-virtual {v5, v6, v1}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1534
    if-eqz v4, :cond_4

    .line 1535
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v6, "RmtUriPrefix"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1542
    :goto_1
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-direct {p0, v5, p2}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->setUriListForConference(Lcom/samsung/commonimsservice/ImsParams;Ljava/lang/String;)Lcom/samsung/commonimsservice/ImsParams;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    .line 1544
    :try_start_0
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/16 v6, 0x15

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v8}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v6, v7, p1, v8}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFunc(IIILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1548
    return v3

    .line 1526
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 1529
    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .line 1537
    :cond_4
    const-string v5, "UriPrefix is NULL"

    invoke-direct {p0, v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1538
    const-string v4, "Sip"

    .line 1539
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v6, "RmtUriPrefix"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1545
    :catch_0
    move-exception v2

    .line 1546
    .local v2, e:Landroid/os/RemoteException;
    new-instance v5, Lcom/samsung/commonimsservice/IMSException;

    const-string v6, "Cannot make call R[Service Not Up]"

    invoke-direct {v5, v6}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public answerCall(I)V
    .locals 5
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1248
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 1249
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot answer call R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1252
    :cond_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v1}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1253
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v2, "eVVFtrType"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1256
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/4 v2, 0x5

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v4}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, p1, v4}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFunc(IIILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1261
    return-void

    .line 1258
    :catch_0
    move-exception v0

    .line 1259
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot answer call R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public answerCallAudioOnly(I)V
    .locals 5
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1232
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 1233
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot answer call audio only R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1236
    :cond_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v1}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1237
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v2, "eVVFtrType"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1239
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/4 v2, 0x5

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v4}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, p1, v4}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFunc(IIILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1245
    return-void

    .line 1241
    :catch_0
    move-exception v0

    .line 1242
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot answer call R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public cancelCall(II)V
    .locals 7
    .parameter "sessionID"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1761
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v3, :cond_0

    .line 1762
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Cannot cancel call R[Service Not Up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1765
    :cond_0
    const/4 v0, -0x1

    .line 1767
    .local v0, callType:I
    const/4 v3, 0x2

    if-ne p2, v3, :cond_1

    .line 1768
    const/4 v0, 0x2

    .line 1776
    :goto_0
    const/4 v2, -0x1

    .line 1777
    .local v2, svcRet:I
    :try_start_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, p1, v6}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFunc(IIILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1781
    return-void

    .line 1769
    .end local v2           #svcRet:I
    :cond_1
    const/4 v3, 0x1

    if-ne p2, v3, :cond_2

    .line 1770
    const/4 v0, 0x1

    goto :goto_0

    .line 1772
    :cond_2
    const/4 v0, 0x5

    goto :goto_0

    .line 1778
    .restart local v2       #svcRet:I
    :catch_0
    move-exception v1

    .line 1779
    .local v1, e:Landroid/os/RemoteException;
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Can\'t end the call R[Service is not up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public captureSurfaceImage(Z)V
    .locals 3
    .parameter "isNearEnd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 2030
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 2031
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot captureSurfaceEndImage"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2035
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1, p1}, Lcom/sec/android/internal/ims/IIMSService;->captureSurfaceImage(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2039
    return-void

    .line 2036
    :catch_0
    move-exception v0

    .line 2037
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot captureSurfaceEndImage"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public changeCall(III)V
    .locals 4
    .parameter "sessionID"
    .parameter "currentType"
    .parameter "newType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x4

    const/4 v1, 0x3

    const/4 v0, 0x2

    .line 1856
    if-ne p3, v3, :cond_2

    .line 1857
    if-eq p2, v0, :cond_0

    if-eq p2, v1, :cond_0

    if-ne p2, v2, :cond_1

    .line 1859
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->downgradeCall(III)V

    .line 1872
    :cond_1
    :goto_0
    return-void

    .line 1860
    :cond_2
    if-eq p3, v1, :cond_3

    if-ne p3, v2, :cond_5

    .line 1861
    :cond_3
    if-ne p2, v0, :cond_4

    .line 1862
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->downgradeCall(III)V

    goto :goto_0

    .line 1863
    :cond_4
    if-ne p2, v3, :cond_1

    .line 1864
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->upgradeCall(III)V

    goto :goto_0

    .line 1866
    :cond_5
    if-ne p3, v0, :cond_1

    .line 1867
    if-eq p2, v1, :cond_6

    if-eq p2, v2, :cond_6

    if-ne p2, v3, :cond_1

    .line 1869
    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->upgradeCall(III)V

    goto :goto_0
.end method

.method public continueVideo(I)V
    .locals 6
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1364
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v2, :cond_0

    .line 1365
    new-instance v2, Lcom/samsung/commonimsservice/IMSException;

    const-string v3, "Cannot continue video R[Service Not Up]"

    invoke-direct {v2, v3}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1368
    :cond_0
    const/4 v1, -0x1

    .line 1369
    .local v1, retval:I
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v2}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1370
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v3, "appType"

    const/4 v4, 0x7

    invoke-virtual {v2, v3, v4}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1373
    :try_start_0
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/16 v3, 0xe

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v5}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, p1, v5}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFunc(IIILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1378
    return-void

    .line 1375
    :catch_0
    move-exception v0

    .line 1376
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Lcom/samsung/commonimsservice/IMSException;

    const-string v3, "Cannot continue call R[Service Not Up]"

    invoke-direct {v2, v3}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public deRegisterForCallStateListener(Lcom/samsung/commonimsservice/IIMSCallStateListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 1959
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeRegistering for call state change listener["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1960
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1961
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing call state change listener["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1962
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1964
    :cond_0
    return-void
.end method

.method public deRegisterForRegStateListener(Lcom/samsung/commonimsservice/IIMSRegisterStateListener;)V
    .locals 2
    .parameter "regListener"

    .prologue
    .line 1967
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeRegistering for register state change listener["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1968
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1969
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing register state change listener["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1970
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1972
    :cond_0
    return-void
.end method

.method public deRegisterForServiceConnectionListener(Lcom/samsung/commonimsservice/IImsServiceConnectionListener;)V
    .locals 2
    .parameter "connListener"

    .prologue
    .line 1975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeRegistering for connection state change listener["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1976
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mServiceConnectionListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1977
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing connection state change listener["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1978
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mServiceConnectionListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1980
    :cond_0
    return-void
.end method

.method public deinitSurface(Z)V
    .locals 3
    .parameter "isNearEnd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 2044
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 2045
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot deinitSurface"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2049
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1, p1}, Lcom/sec/android/internal/ims/IIMSService;->deinitSurface(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2053
    return-void

    .line 2050
    :catch_0
    move-exception v0

    .line 2051
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot deinitSurface"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public downgradeCall(III)V
    .locals 7
    .parameter "sessionID"
    .parameter "currentType"
    .parameter "newType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x5

    .line 1785
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v3, :cond_0

    .line 1786
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Cannot downgrade call R[Service Not Up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1789
    :cond_0
    const/4 v2, -0x1

    .line 1790
    .local v2, svcId:I
    const/4 v0, -0x1

    .line 1791
    .local v0, appType:I
    if-ne p3, v5, :cond_1

    if-ne p2, v4, :cond_1

    .line 1792
    const/4 v0, 0x1

    .line 1803
    :goto_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v3}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1804
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v4, "appType"

    invoke-virtual {v3, v4, v0}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1806
    :try_start_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/16 v4, 0xe

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v6}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, p1, v6}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFunc(IIILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1810
    return-void

    .line 1793
    :cond_1
    if-ne p3, v5, :cond_2

    if-ne p2, v6, :cond_2

    .line 1794
    const/4 v0, 0x3

    goto :goto_0

    .line 1795
    :cond_2
    if-ne p3, v6, :cond_3

    if-ne p2, v4, :cond_3

    .line 1796
    const/4 v0, 0x4

    goto :goto_0

    .line 1797
    :cond_3
    const/4 v3, 0x4

    if-ne p3, v3, :cond_4

    if-ne p2, v4, :cond_4

    .line 1798
    const/4 v0, 0x4

    goto :goto_0

    .line 1800
    :cond_4
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Down grade is not allowed"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1807
    :catch_0
    move-exception v1

    .line 1808
    .local v1, e:Landroid/os/RemoteException;
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Cannot downgrade call R[Service Not Up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public endCall(II)V
    .locals 7
    .parameter "sessionID"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1738
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v3, :cond_0

    .line 1739
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Cannot end call R[Service Not Up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1742
    :cond_0
    const/4 v0, -0x1

    .line 1744
    .local v0, callType:I
    const/4 v3, 0x2

    if-ne p2, v3, :cond_1

    .line 1745
    const/4 v0, 0x2

    .line 1753
    :goto_0
    const/4 v2, -0x1

    .line 1754
    .local v2, svcRet:I
    :try_start_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, p1, v6}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFunc(IIILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1758
    return-void

    .line 1746
    .end local v2           #svcRet:I
    :cond_1
    const/4 v3, 0x1

    if-ne p2, v3, :cond_2

    .line 1747
    const/4 v0, 0x1

    goto :goto_0

    .line 1749
    :cond_2
    const/4 v0, 0x5

    goto :goto_0

    .line 1755
    .restart local v2       #svcRet:I
    :catch_0
    move-exception v1

    .line 1756
    .local v1, e:Landroid/os/RemoteException;
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Can\'t end the call R[Service is not up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getMaxVolume(I)I
    .locals 2
    .parameter "sessionID"

    .prologue
    .line 1392
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0
.end method

.method public holdCall(I)V
    .locals 6
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 1198
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v2, :cond_0

    .line 1199
    new-instance v2, Lcom/samsung/commonimsservice/IMSException;

    const-string v3, "Cannot hold call R[Service Not Up]"

    invoke-direct {v2, v3}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1202
    :cond_0
    const/4 v1, -0x1

    .line 1203
    .local v1, retval:I
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v2}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1204
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v3, "appType"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1206
    :try_start_0
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/16 v3, 0x8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v5}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, p1, v5}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFunc(IIILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1211
    return-void

    .line 1208
    :catch_0
    move-exception v0

    .line 1209
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Lcom/samsung/commonimsservice/IMSException;

    const-string v3, "Cannot hold call R[Service Not Up]"

    invoke-direct {v2, v3}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public holdVideo(I)V
    .locals 6
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1347
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v2, :cond_0

    .line 1348
    new-instance v2, Lcom/samsung/commonimsservice/IMSException;

    const-string v3, "Cannot hold call R[Service Not Up]"

    invoke-direct {v2, v3}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1351
    :cond_0
    const/4 v1, -0x1

    .line 1352
    .local v1, retval:I
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v2}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1353
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v3, "appType"

    const/4 v4, 0x6

    invoke-virtual {v2, v3, v4}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1355
    :try_start_0
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/16 v3, 0xe

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v5}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, p1, v5}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFunc(IIILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1361
    return-void

    .line 1357
    :catch_0
    move-exception v0

    .line 1358
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Lcom/samsung/commonimsservice/IMSException;

    const-string v3, "Cannot hold call: Service Not Up"

    invoke-direct {v2, v3}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public isDeviceOnEHRPD()Z
    .locals 3

    .prologue
    .line 1678
    const/4 v1, 0x0

    .line 1679
    .local v1, ret:Z
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-eqz v2, :cond_0

    .line 1681
    :try_start_0
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v2}, Lcom/sec/android/internal/ims/IIMSService;->isOnEHRPD()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1687
    :cond_0
    :goto_0
    return v1

    .line 1682
    :catch_0
    move-exception v0

    .line 1683
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    .line 1684
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isDeviceOnLTE()Z
    .locals 3

    .prologue
    .line 1665
    const/4 v1, 0x0

    .line 1666
    .local v1, ret:Z
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-eqz v2, :cond_0

    .line 1668
    :try_start_0
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v2}, Lcom/sec/android/internal/ims/IIMSService;->isOnLTE()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1674
    :cond_0
    :goto_0
    return v1

    .line 1669
    :catch_0
    move-exception v0

    .line 1670
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    .line 1671
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isFrontCamInUse()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1691
    const/4 v1, 0x0

    .line 1692
    .local v1, ret:Z
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-eqz v3, :cond_0

    .line 1694
    :try_start_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v3}, Lcom/sec/android/internal/ims/IIMSService;->isFrontCamInUse()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1695
    .local v2, retVal:I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1696
    const/4 v1, 0x1

    .line 1705
    .end local v2           #retVal:I
    :cond_0
    :goto_0
    return v1

    .line 1698
    .restart local v2       #retVal:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1700
    .end local v2           #retVal:I
    :catch_0
    move-exception v0

    .line 1701
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    .line 1702
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isMuted(I)Z
    .locals 1
    .parameter "sessionID"

    .prologue
    .line 1299
    iget-boolean v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mMuted:Z

    return v0
.end method

.method public makeMediaCall(Ljava/lang/String;I)I
    .locals 11
    .parameter "peerUri"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/16 v9, 0x8

    const/4 v8, 0x7

    const/4 v7, 0x5

    .line 1553
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v5, :cond_0

    .line 1554
    new-instance v5, Lcom/samsung/commonimsservice/IMSException;

    const-string v6, "Cannot make media call R[Service Not Up]"

    invoke-direct {v5, v6}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1557
    :cond_0
    const/4 v3, -0x1

    .line 1559
    .local v3, sessid:I
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "sipuriprefix"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1560
    .local v4, uriPrefix:Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "uritype"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1561
    .local v0, dialType:Ljava/lang/String;
    if-nez p1, :cond_1

    .line 1562
    new-instance v5, Lcom/samsung/commonimsservice/IMSException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot make call R[invalid URI ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1564
    :cond_1
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v5}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1566
    if-ne p2, v7, :cond_3

    .line 1567
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v6, "AppType"

    invoke-virtual {v5, v6, v9}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1568
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v6, "CallType"

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1580
    :goto_0
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v6, "RmtDialNum"

    invoke-virtual {v5, v6, p1}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1581
    if-ne p2, v8, :cond_2

    .line 1582
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-direct {p0, v5, p1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->setUriListForConference(Lcom/samsung/commonimsservice/ImsParams;Ljava/lang/String;)Lcom/samsung/commonimsservice/ImsParams;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    .line 1585
    :cond_2
    const/4 v1, 0x1

    .line 1586
    .local v1, dialTypeVal:I
    if-eqz v0, :cond_7

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1587
    const-string v5, "1"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1588
    const/4 v1, 0x3

    .line 1595
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DialType ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] DialTypeVal ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1596
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v6, "RmtUriType"

    invoke-virtual {v5, v6, v1}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1598
    if-eqz v4, :cond_8

    .line 1599
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v6, "RmtUriPrefix"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1607
    :goto_2
    if-ne p2, v8, :cond_9

    .line 1608
    :try_start_0
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/16 v6, 0x14

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v9}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v6, v7, v8, v9}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFunc(IIILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1616
    :goto_3
    return v3

    .line 1569
    .end local v1           #dialTypeVal:I
    :cond_3
    if-ne p2, v10, :cond_4

    .line 1570
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v6, "AppType"

    invoke-virtual {v5, v6, v9}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1571
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v6, "CallType"

    invoke-virtual {v5, v6, v10}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    goto :goto_0

    .line 1572
    :cond_4
    if-ne p2, v8, :cond_5

    .line 1573
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v6, "AppType"

    invoke-virtual {v5, v6, v9}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1574
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v6, "CallType"

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1576
    :cond_5
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v6, "AppType"

    const/4 v7, 0x4

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1577
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v6, "CallType"

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1590
    .restart local v1       #dialTypeVal:I
    :cond_6
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 1593
    :cond_7
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 1601
    :cond_8
    const-string v5, "UriPrefix is NULL"

    invoke-direct {p0, v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1602
    const-string v4, "Sip"

    .line 1603
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v6, "RmtUriPrefix"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1610
    :cond_9
    :try_start_1
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v9}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v6, v7, v8, v9}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFunc(IIILjava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    goto :goto_3

    .line 1612
    :catch_0
    move-exception v2

    .line 1613
    .local v2, e:Landroid/os/RemoteException;
    new-instance v5, Lcom/samsung/commonimsservice/IMSException;

    const-string v6, "Cannot make call R[Service Not Up]"

    invoke-direct {v5, v6}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public registerForCallStateListener(Lcom/samsung/commonimsservice/IIMSCallStateListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 1926
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Register call state change listener ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1927
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1928
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] for call state change"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1929
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1933
    :goto_0
    return-void

    .line 1931
    :cond_0
    const-string v0, "Can\'t registered for call state change"

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerForRegStateListener(Lcom/samsung/commonimsservice/IIMSRegisterStateListener;)V
    .locals 2
    .parameter "regListener"

    .prologue
    .line 1936
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Register register status state change listener ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1937
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1938
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] for register state change"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1939
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1943
    :goto_0
    return-void

    .line 1941
    :cond_0
    const-string v0, "Can\'t registered for register status state change"

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerForServiceConnectionListener(Lcom/samsung/commonimsservice/IImsServiceConnectionListener;)V
    .locals 2
    .parameter "connListener"

    .prologue
    .line 1946
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Register connection status state change listener ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1947
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mServiceConnectionListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1948
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] for connection state change"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1949
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mServiceConnectionListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1950
    iget-boolean v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->serviceConnStatus:Z

    if-eqz v0, :cond_1

    .line 1951
    invoke-interface {p1}, Lcom/samsung/commonimsservice/IImsServiceConnectionListener;->onConnected()V

    .line 1956
    :cond_0
    :goto_0
    return-void

    .line 1953
    :cond_1
    invoke-interface {p1}, Lcom/samsung/commonimsservice/IImsServiceConnectionListener;->onDisconnected()V

    goto :goto_0
.end method

.method public rejectCall(II)V
    .locals 7
    .parameter "sessionID"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    .line 1709
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v3, :cond_0

    .line 1710
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Cannot reject call R[Service Not Up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1713
    :cond_0
    const/4 v2, -0x1

    .line 1714
    .local v2, svcRet:I
    const/4 v0, -0x1

    .line 1716
    .local v0, callType:I
    if-ne p2, v5, :cond_1

    .line 1717
    const/4 v0, 0x2

    .line 1724
    :goto_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v3}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1726
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v4, "eRejectRsn"

    invoke-virtual {v3, v4, v5}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1727
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v4, "eVVFtrType"

    invoke-virtual {v3, v4, v0}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1730
    :try_start_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/4 v4, 0x6

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v6}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, p1, v6}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFunc(IIILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1735
    return-void

    .line 1718
    :cond_1
    const/4 v3, 0x1

    if-ne p2, v3, :cond_2

    .line 1719
    const/4 v0, 0x1

    goto :goto_0

    .line 1721
    :cond_2
    const/4 v0, 0x5

    goto :goto_0

    .line 1731
    :catch_0
    move-exception v1

    .line 1732
    .local v1, e:Landroid/os/RemoteException;
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Can\'t reject call R[Service is not up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public rejectChangeRequest(I)V
    .locals 6
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1455
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v2, :cond_0

    .line 1456
    new-instance v2, Lcom/samsung/commonimsservice/IMSException;

    const-string v3, "Cannot reject change request R[Service Not Up]"

    invoke-direct {v2, v3}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1459
    :cond_0
    const/4 v0, -0x1

    .line 1460
    .local v0, callId:I
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v2}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1461
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v3, "Type"

    const-string v4, "reject"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1464
    :try_start_0
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/16 v3, 0x10

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v5}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, p1, v5}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFunc(IIILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1468
    return-void

    .line 1465
    :catch_0
    move-exception v1

    .line 1466
    .local v1, e:Landroid/os/RemoteException;
    new-instance v2, Lcom/samsung/commonimsservice/IMSException;

    const-string v3, "Reject change request failed R[Service is not up]"

    invoke-direct {v2, v3}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public resetCameraID()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1983
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-eqz v1, :cond_0

    .line 1985
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1}, Lcom/sec/android/internal/ims/IIMSService;->resetCameraID()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1993
    :goto_0
    return-void

    .line 1986
    :catch_0
    move-exception v0

    .line 1987
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot upgrade call R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1990
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v1, "Ims interface is null stop we can not reset camera ID now!!"

    invoke-direct {p0, v1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resumeCall(I)V
    .locals 6
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1214
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v2, :cond_0

    .line 1215
    new-instance v2, Lcom/samsung/commonimsservice/IMSException;

    const-string v3, "Cannot resume call R[Service Not Up]"

    invoke-direct {v2, v3}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1218
    :cond_0
    const/4 v1, -0x1

    .line 1219
    .local v1, retval:I
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v2}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1220
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v3, "appType"

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1221
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v3, "ssId"

    invoke-virtual {v2, v3, v5}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1223
    :try_start_0
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/16 v3, 0xb

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v5}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, p1, v5}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFunc(IIILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1229
    return-void

    .line 1225
    :catch_0
    move-exception v0

    .line 1226
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Lcom/samsung/commonimsservice/IMSException;

    const-string v3, "Cannot continue call R[Service Not Up]"

    invoke-direct {v2, v3}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public sendDtmf(II)Z
    .locals 7
    .parameter "sessionID"
    .parameter "code"

    .prologue
    .line 1471
    const/4 v1, 0x0

    .line 1472
    .local v1, ret:Z
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v3, :cond_0

    move v2, v1

    .line 1488
    .end local v1           #ret:Z
    .local v2, ret:I
    :goto_0
    return v2

    .line 1476
    .end local v2           #ret:I
    .restart local v1       #ret:Z
    :cond_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v3}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1477
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v4, "keyvalue"

    invoke-virtual {v3, v4, p2}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1478
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v4, "KeyeventType"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1481
    :try_start_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/4 v4, 0x7

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v6}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, p1, v6}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFunc(IIILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1483
    const/4 v1, 0x1

    :goto_1
    move v2, v1

    .line 1488
    .restart local v2       #ret:I
    goto :goto_0

    .line 1484
    .end local v2           #ret:I
    :catch_0
    move-exception v0

    .line 1485
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public sendLiveVideo()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 2019
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 2020
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot swipe video surface R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2024
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1}, Lcom/sec/android/internal/ims/IIMSService;->sendLiveVideo()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2028
    return-void

    .line 2025
    :catch_0
    move-exception v0

    .line 2026
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot upgrade call R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public sendStillImage(Ljava/lang/String;)V
    .locals 3
    .parameter "frameSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 2008
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 2009
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot swipe video surface R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2013
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1, p1}, Lcom/sec/android/internal/ims/IIMSService;->sendStillImage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2017
    return-void

    .line 2014
    :catch_0
    move-exception v0

    .line 2015
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot upgrade call R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setAutoResponse(II)V
    .locals 4
    .parameter "flag"
    .parameter "code"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1637
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 1638
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot set auto response R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1641
    :cond_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 1650
    :goto_0
    return-void

    .line 1646
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/16 v2, 0x11

    const/4 v3, 0x0

    invoke-interface {v1, v2, p1, p2, v3}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFunc(IIILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1647
    :catch_0
    move-exception v0

    .line 1648
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot make call R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setCameraOrientation(I)V
    .locals 3
    .parameter "orientation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1653
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 1654
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot hold call R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1658
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1, p1}, Lcom/sec/android/internal/ims/IIMSService;->setOrientation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1662
    return-void

    .line 1659
    :catch_0
    move-exception v0

    .line 1660
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot make call R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setDisplay(ILandroid/view/SurfaceHolder;)V
    .locals 5
    .parameter "sessionID"
    .parameter "holder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1334
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 1335
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot set display R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1339
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {p2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-interface {p2}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-interface {p2}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lcom/sec/android/internal/ims/IIMSService;->startVideoRenderer(Landroid/view/Surface;II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1344
    return-void

    .line 1340
    :catch_0
    move-exception v0

    .line 1341
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Can\'t set display R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setSpeakerMode(IZ)V
    .locals 1
    .parameter "sessionID"
    .parameter "speakerMode"

    .prologue
    .line 1329
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 1330
    return-void
.end method

.method public setVolume(II)V
    .locals 3
    .parameter "sessionID"
    .parameter "index"

    .prologue
    const/4 v2, 0x0

    .line 1381
    if-gez p2, :cond_0

    .line 1389
    :goto_0
    return-void

    .line 1383
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->getMaxVolume(I)I

    move-result v0

    if-le p2, v0, :cond_1

    .line 1384
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->getMaxVolume(I)I

    move-result v1

    invoke-virtual {v0, v2, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 1386
    :cond_1
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2, p2, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method

.method public startAudio(I)V
    .locals 3
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1396
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 1397
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot hold call R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1401
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1}, Lcom/sec/android/internal/ims/IIMSService;->startAudio()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1406
    return-void

    .line 1402
    :catch_0
    move-exception v0

    .line 1403
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Start audio failed R[Service is not up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public startCamera(IILandroid/view/SurfaceHolder;ZZ)I
    .locals 9
    .parameter "sessionID"
    .parameter "cameraID"
    .parameter "surfaceHolder"
    .parameter "isCallEstablished"
    .parameter "isConference"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v0, :cond_0

    .line 1266
    new-instance v0, Lcom/samsung/commonimsservice/IMSException;

    const-string v1, "Cannot start camera R[Service Not Up]"

    invoke-direct {v0, v1}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1269
    :cond_0
    const/4 v8, -0x1

    .line 1271
    .local v8, retVal:I
    if-eqz p3, :cond_1

    .line 1272
    :try_start_0
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {p3}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-interface {p3}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-interface {p3}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    move v4, p2

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/sec/android/internal/ims/IIMSService;->startCamera(Landroid/view/Surface;IIIZZ)I

    move-result v8

    .line 1281
    :goto_0
    return v8

    .line 1276
    :cond_1
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, p2

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/sec/android/internal/ims/IIMSService;->startCamera(Landroid/view/Surface;IIIZZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    goto :goto_0

    .line 1277
    :catch_0
    move-exception v7

    .line 1278
    .local v7, e:Landroid/os/RemoteException;
    new-instance v0, Lcom/samsung/commonimsservice/IMSException;

    const-string v1, "Camera cannot be acquired"

    invoke-direct {v0, v1}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startMedia(I)V
    .locals 0
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1422
    invoke-virtual {p0, p1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->startAudio(I)V

    .line 1423
    invoke-virtual {p0, p1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->startVideo(I)V

    .line 1424
    return-void
.end method

.method public startVideo(I)V
    .locals 3
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1409
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 1410
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Start video failed R[Service not up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1414
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1}, Lcom/sec/android/internal/ims/IIMSService;->startVideo()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1419
    return-void

    .line 1415
    :catch_0
    move-exception v0

    .line 1416
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Start video failed R[Service not up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public stopCamera(I)I
    .locals 4
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1492
    const/4 v1, -0x1

    .line 1493
    .local v1, ret:I
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v2, :cond_0

    .line 1494
    new-instance v2, Lcom/samsung/commonimsservice/IMSException;

    const-string v3, "Cannot stop camera R[Service Not Up]"

    invoke-direct {v2, v3}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1498
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v2}, Lcom/sec/android/internal/ims/IIMSService;->stopCamera()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1503
    return v1

    .line 1499
    :catch_0
    move-exception v0

    .line 1500
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1501
    new-instance v2, Lcom/samsung/commonimsservice/IMSException;

    const-string v3, "Camera not stopped"

    invoke-direct {v2, v3}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public swapVideoSurface(I)V
    .locals 3
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1996
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 1997
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot swipe video surface R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2001
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1}, Lcom/sec/android/internal/ims/IIMSService;->swapVideoSurface()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2005
    return-void

    .line 2002
    :catch_0
    move-exception v0

    .line 2003
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot upgrade call R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public switchCamera()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1286
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 1287
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot switch camera R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1291
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1}, Lcom/sec/android/internal/ims/IIMSService;->switchCamera()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1296
    return-void

    .line 1292
    :catch_0
    move-exception v0

    .line 1293
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Camera cannot be acquired"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toggleMute(I)V
    .locals 3
    .parameter "sessionID"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1427
    iget-boolean v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mMuted:Z

    if-eqz v0, :cond_0

    .line 1428
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 1429
    iput-boolean v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mMuted:Z

    .line 1435
    :goto_0
    return-void

    .line 1431
    :cond_0
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 1432
    iput-boolean v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mMuted:Z

    goto :goto_0
.end method

.method public upgradeCall(III)V
    .locals 7
    .parameter "sessionID"
    .parameter "type"
    .parameter "newType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    .line 1814
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v3, :cond_0

    .line 1815
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Cannot upgrade call R[Service Not Up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1818
    :cond_0
    const/4 v2, -0x1

    .line 1819
    .local v2, svcId:I
    const/4 v0, -0x1

    .line 1821
    .local v0, appType:I
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v3}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1823
    const/4 v3, 0x5

    if-ne v3, p3, :cond_3

    .line 1824
    if-ne v4, p2, :cond_2

    .line 1825
    const/4 v0, 0x5

    .line 1830
    :goto_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v4, "appType"

    invoke-virtual {v3, v4, v0}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1832
    :try_start_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/16 v4, 0xe

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v6}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, p1, v6}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFunc(IIILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1852
    :cond_1
    :goto_1
    return-void

    .line 1827
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1833
    :catch_0
    move-exception v1

    .line 1834
    .local v1, e:Landroid/os/RemoteException;
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Upgrade failed R[Service is not up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1836
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_3
    if-ne p3, v4, :cond_1

    .line 1838
    if-ne v4, p2, :cond_4

    .line 1839
    const/4 v0, 0x7

    .line 1843
    :goto_2
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v4, "appType"

    invoke-virtual {v3, v4, v0}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1846
    :try_start_1
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/16 v4, 0x13

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v6}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, p1, v6}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFunc(IIILjava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto :goto_1

    .line 1841
    :cond_4
    const/4 v0, 0x2

    goto :goto_2

    .line 1847
    :catch_1
    move-exception v1

    .line 1848
    .restart local v1       #e:Landroid/os/RemoteException;
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Cannot upgrade call R[Service Not Up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
