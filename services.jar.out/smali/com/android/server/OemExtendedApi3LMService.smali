.class public final Lcom/android/server/OemExtendedApi3LMService;
.super Landroid/os/IOemExtendedApi3LM$Stub;
.source "OemExtendedApi3LMService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OemExtendedApi3LMService$PublicKey3LM;
    }
.end annotation


# static fields
.field public static final ACTION_EMERGENCY_LOCK_ENABLED:Ljava/lang/String; = "android.action.emergencylockenabled"

.field public static final STATE_DISABLED:I = 0x0

.field public static final STATE_ENABLED:I = 0x1

.field public static final STATE_UNKNOWN:I = -0x1

.field public static final STATE_UNSUPPORTED:I = -0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/IDeviceManagerRestrictable3LM;)V
    .locals 0
    .parameter "context"
    .parameter "oem"

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/os/IOemExtendedApi3LM$Stub;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public getEmergencyLockState()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public getFelicaState()I
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method public getInfraredState()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method public getOneSegState()I
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public setEmergencyLock(ZLjava/lang/String;Z)Z
    .locals 1
    .parameter "enable"
    .parameter "text"
    .parameter "alarm"

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public setEmergencyLockState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 63
    return-void
.end method

.method public setFelicaState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 43
    return-void
.end method

.method public setInfraredState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 57
    return-void
.end method

.method public setOneSegState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 50
    return-void
.end method
