.class public Lcom/android/internal/os/EncryptionManager3LM;
.super Landroid/app/Service;
.source "EncryptionManager3LM.java"


# static fields
.field public static final COMPONENT_NAME:Landroid/content/ComponentName; = null

.field public static final CONVERT:Ljava/lang/String; = "com.android.internal.os.Encryption3LMService.CONVERT"

.field static final TAG:Ljava/lang/String; = "EncryptionManager3LM"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-class v2, Lcom/android/internal/os/EncryptionManager3LM;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/os/EncryptionManager3LM;->COMPONENT_NAME:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private convertToPlaintext()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 25
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 34
    const/4 v0, -0x1

    return v0
.end method
