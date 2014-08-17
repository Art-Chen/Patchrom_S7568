.class public Lcom/android/internal/telephony/cat/CatEnvelopeMessage;
.super Ljava/lang/Object;
.source "CatEnvelopeMessage.java"


# instance fields
.field additionalInfo:[B

.field destinationID:I

.field event:I

.field sourceID:I


# direct methods
.method public constructor <init>(III[B)V
    .locals 1
    .parameter "event"
    .parameter "sourceID"
    .parameter "destinationID"
    .parameter "additionalInfo"

    .prologue
    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/internal/telephony/cat/CatEnvelopeMessage;->event:I

    iput v0, p0, Lcom/android/internal/telephony/cat/CatEnvelopeMessage;->sourceID:I

    iput v0, p0, Lcom/android/internal/telephony/cat/CatEnvelopeMessage;->destinationID:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatEnvelopeMessage;->additionalInfo:[B

    iput p1, p0, Lcom/android/internal/telephony/cat/CatEnvelopeMessage;->event:I

    iput p2, p0, Lcom/android/internal/telephony/cat/CatEnvelopeMessage;->sourceID:I

    iput p3, p0, Lcom/android/internal/telephony/cat/CatEnvelopeMessage;->destinationID:I

    iput-object p4, p0, Lcom/android/internal/telephony/cat/CatEnvelopeMessage;->additionalInfo:[B

    return-void
.end method
