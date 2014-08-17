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
    invoke-direct {p0}, Landroid/os/IEncryption3LM$Stub;-><init>()V

    return-void
.end method

.method private encryptedAppsDetected()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public convertToPlaintext(Ljava/lang/String;I)Z
    .locals 1
    .parameter "packageName"
    .parameter "uid"

    .prologue
    const/4 v0, 0x0

    return v0
.end method
