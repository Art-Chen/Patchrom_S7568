.class Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;
.super Ljava/lang/Object;
.source "IccFileHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccFileHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoadTransparentContext"
.end annotation


# instance fields
.field binSize:I

.field countPhases:I

.field efid:I

.field loadAll:Z

.field onLoaded:Landroid/os/Message;

.field phaseNum:I

.field results:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(IILandroid/os/Message;)V
    .locals 1
    .parameter "efid"
    .parameter "phaseNum"
    .parameter "onLoaded"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->efid:I

    iput p2, p0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->phaseNum:I

    iput-object p3, p0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->onLoaded:Landroid/os/Message;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->loadAll:Z

    return-void
.end method

.method constructor <init>(ILandroid/os/Message;)V
    .locals 1
    .parameter "efid"
    .parameter "onLoaded"

    .prologue
    const/4 v0, 0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->efid:I

    iput v0, p0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->phaseNum:I

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->loadAll:Z

    iput-object p2, p0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->onLoaded:Landroid/os/Message;

    return-void
.end method
