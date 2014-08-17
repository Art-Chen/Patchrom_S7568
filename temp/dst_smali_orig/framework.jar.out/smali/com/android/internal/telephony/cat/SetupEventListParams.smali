.class Lcom/android/internal/telephony/cat/SetupEventListParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field events:[I

.field numberOfEvents:I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;I[I)V
    .locals 0
    .parameter "cmdDet"
    .parameter "numberOfEvents"
    .parameter "events"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    iput p2, p0, Lcom/android/internal/telephony/cat/SetupEventListParams;->numberOfEvents:I

    iput-object p3, p0, Lcom/android/internal/telephony/cat/SetupEventListParams;->events:[I

    return-void
.end method
