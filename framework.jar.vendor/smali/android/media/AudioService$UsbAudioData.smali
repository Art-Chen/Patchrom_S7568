.class final Landroid/media/AudioService$UsbAudioData;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UsbAudioData"
.end annotation


# instance fields
.field private cardNumber:Ljava/lang/String;

.field private channels:Ljava/lang/String;

.field private deviceNumber:Ljava/lang/String;

.field private state:I

.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method private constructor <init>(Landroid/media/AudioService;)V
    .locals 0
    .parameter

    .prologue
    .line 432
    iput-object p1, p0, Landroid/media/AudioService$UsbAudioData;->this$0:Landroid/media/AudioService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 432
    invoke-direct {p0, p1}, Landroid/media/AudioService$UsbAudioData;-><init>(Landroid/media/AudioService;)V

    return-void
.end method

.method static synthetic access$7200(Landroid/media/AudioService$UsbAudioData;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 432
    iget-object v0, p0, Landroid/media/AudioService$UsbAudioData;->channels:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7300(Landroid/media/AudioService$UsbAudioData;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 432
    iget-object v0, p0, Landroid/media/AudioService$UsbAudioData;->cardNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7400(Landroid/media/AudioService$UsbAudioData;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 432
    iget-object v0, p0, Landroid/media/AudioService$UsbAudioData;->deviceNumber:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public setUsbAudioData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "state"
    .parameter "channels"
    .parameter "cardNumber"
    .parameter "deviceNumber"

    .prologue
    .line 439
    iput p1, p0, Landroid/media/AudioService$UsbAudioData;->state:I

    .line 440
    iput-object p2, p0, Landroid/media/AudioService$UsbAudioData;->channels:Ljava/lang/String;

    .line 441
    iput-object p3, p0, Landroid/media/AudioService$UsbAudioData;->cardNumber:Ljava/lang/String;

    .line 442
    iput-object p4, p0, Landroid/media/AudioService$UsbAudioData;->deviceNumber:Ljava/lang/String;

    .line 443
    return-void
.end method
