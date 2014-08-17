.class public Lcom/android/internal/telephony/ims/IMSCallWaitingNotification;
.super Ljava/lang/Object;
.source "IMSCallWaitingNotification.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "IMS"


# instance fields
.field public alertPitch:I

.field public isPresent:I

.field public name:Ljava/lang/String;

.field public namePresentation:I

.field public number:Ljava/lang/String;

.field public numberPresentation:I

.field public signal:I

.field public signalType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallWaitingNotification;->number:Ljava/lang/String;

    iput v0, p0, Lcom/android/internal/telephony/ims/IMSCallWaitingNotification;->numberPresentation:I

    iput-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallWaitingNotification;->name:Ljava/lang/String;

    iput v0, p0, Lcom/android/internal/telephony/ims/IMSCallWaitingNotification;->namePresentation:I

    iput v0, p0, Lcom/android/internal/telephony/ims/IMSCallWaitingNotification;->isPresent:I

    iput v0, p0, Lcom/android/internal/telephony/ims/IMSCallWaitingNotification;->signalType:I

    iput v0, p0, Lcom/android/internal/telephony/ims/IMSCallWaitingNotification;->alertPitch:I

    iput v0, p0, Lcom/android/internal/telephony/ims/IMSCallWaitingNotification;->signal:I

    return-void
.end method
