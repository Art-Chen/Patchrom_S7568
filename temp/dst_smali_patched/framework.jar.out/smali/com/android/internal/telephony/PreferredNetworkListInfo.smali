.class public Lcom/android/internal/telephony/PreferredNetworkListInfo;
.super Ljava/lang/Object;
.source "PreferredNetworkListInfo.java"


# instance fields
.field public mGsmAct:I

.field public mGsmCompactAct:I

.field public mIndex:I

.field public mMode:I

.field public mOperator:Ljava/lang/String;

.field public mPlmn:Ljava/lang/String;

.field public mUtranAct:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mIndex:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mOperator:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mPlmn:Ljava/lang/String;

    iput v1, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mGsmAct:I

    iput v1, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mGsmCompactAct:I

    iput v1, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mUtranAct:I

    iput v1, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mMode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IIII)V
    .locals 0
    .parameter "index"
    .parameter "operator"
    .parameter "plmn"
    .parameter "gsmact"
    .parameter "gsmcompactact"
    .parameter "utranact"
    .parameter "mode"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mIndex:I

    iput-object p2, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mOperator:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mPlmn:Ljava/lang/String;

    iput p4, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mGsmAct:I

    iput p5, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mGsmCompactAct:I

    iput p6, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mUtranAct:I

    iput p7, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mMode:I

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PreferredNetworkListInfo;)V
    .locals 0
    .parameter "s"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/PreferredNetworkListInfo;->copyFrom(Lcom/android/internal/telephony/PreferredNetworkListInfo;)V

    return-void
.end method


# virtual methods
.method protected copyFrom(Lcom/android/internal/telephony/PreferredNetworkListInfo;)V
    .locals 1
    .parameter "s"

    .prologue
    iget v0, p1, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mIndex:I

    iput v0, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mIndex:I

    iget-object v0, p1, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mOperator:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mOperator:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mPlmn:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mPlmn:Ljava/lang/String;

    iget v0, p1, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mGsmAct:I

    iput v0, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mGsmAct:I

    iget v0, p1, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mGsmCompactAct:I

    iput v0, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mGsmCompactAct:I

    iget v0, p1, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mUtranAct:I

    iput v0, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mUtranAct:I

    iget v0, p1, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mMode:I

    iput v0, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mMode:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PreferredNetworkListInfo: { index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", operator: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", plmn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mPlmn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gsmAct: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mGsmAct:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gsmCompactAct: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mGsmCompactAct:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", utranAct: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mUtranAct:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
