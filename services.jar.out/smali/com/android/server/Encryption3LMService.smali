.class public final Lcom/android/server/Encryption3LMService;
.super Landroid/os/IEncryption3LM$Stub;
.source "Encryption3LMService.java"


# static fields
.field static final TAG:Ljava/lang/String; = "Encryption3LMService"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/IEncryption3LM$Stub;-><init>()V

    .line 18
    return-void
.end method

.method private encryptedAppsDetected()Z
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public convertToPlaintext(Ljava/lang/String;I)Z
    .locals 1
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method
