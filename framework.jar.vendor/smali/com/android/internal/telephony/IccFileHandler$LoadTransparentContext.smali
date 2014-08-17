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
    .line 166
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput p1, p0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->efid:I

    .line 168
    iput p2, p0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->phaseNum:I

    .line 169
    iput-object p3, p0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->onLoaded:Landroid/os/Message;

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->loadAll:Z

    .line 171
    return-void
.end method

.method constructor <init>(ILandroid/os/Message;)V
    .locals 1
    .parameter "efid"
    .parameter "onLoaded"

    .prologue
    const/4 v0, 0x1

    .line 173
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput p1, p0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->efid:I

    .line 175
    iput v0, p0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->phaseNum:I

    .line 176
    iput-boolean v0, p0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->loadAll:Z

    .line 177
    iput-object p2, p0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->onLoaded:Landroid/os/Message;

    .line 178
    return-void
.end method
