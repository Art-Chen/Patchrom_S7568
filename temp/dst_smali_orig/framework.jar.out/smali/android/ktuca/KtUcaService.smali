.class public Landroid/ktuca/KtUcaService;
.super Landroid/ktuca/IKtUcaIF$Stub;
.source "KtUcaService.java"


# instance fields
.field private KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

.field private final TAG:Ljava/lang/String;

.field private mChannel:[B

.field private mChannelLen:[I

.field private mContext:Landroid/content/Context;

.field private referenceCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    invoke-direct {p0}, Landroid/ktuca/IKtUcaIF$Stub;-><init>()V

    const-string v2, "KT_UCA_SERVICE"

    iput-object v2, p0, Landroid/ktuca/KtUcaService;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, p0, Landroid/ktuca/KtUcaService;->referenceCount:I

    new-array v2, v3, [B

    iput-object v2, p0, Landroid/ktuca/KtUcaService;->mChannel:[B

    new-array v2, v3, [I

    iput-object v2, p0, Landroid/ktuca/KtUcaService;->mChannelLen:[I

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    const-wide/16 v0, -0x1

    .local v0, ret:J
    iput-object p1, p0, Landroid/ktuca/KtUcaService;->mContext:Landroid/content/Context;

    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KtUcaService]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/ktuca/KtUcaServiceJni;

    invoke-direct {v2}, Landroid/ktuca/KtUcaServiceJni;-><init>()V

    iput-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    iget-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    const/16 v2, -0x35

    iget-object v3, p0, Landroid/ktuca/KtUcaService;->mChannel:[B

    iget-object v4, p0, Landroid/ktuca/KtUcaService;->mChannelLen:[I

    invoke-static {v2, v3, v4}, Landroid/ktuca/KtUcaServiceJni;->KUCA_CHInit(B[B[I)J

    move-result-wide v0

    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "-[KtUcaService]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public KUCA_CHInit(B[B[I)J
    .locals 5
    .parameter "ucatag"
    .parameter "channel"
    .parameter "channelLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, -0x1

    .local v0, ret:J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_CHInit]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    invoke-static {p1, p2, p3}, Landroid/ktuca/KtUcaServiceJni;->KUCA_CHInit(B[B[I)J

    move-result-wide v0

    const-string v2, "KT_UCA_SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_CHInit] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public KUCA_Close([BB)J
    .locals 5
    .parameter "handle"
    .parameter "channel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, -0x1

    .local v0, ret:J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_Close]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    invoke-static {p1, p2}, Landroid/ktuca/KtUcaServiceJni;->KUCA_Close([BB)J

    move-result-wide v0

    const-string v2, "KT_UCA_SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_Close] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public KUCA_CloseT([BB)J
    .locals 4
    .parameter "appId"
    .parameter "channel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, -0x1

    .local v0, ret:J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_CloseT]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    invoke-static {p1, p2}, Landroid/ktuca/KtUcaServiceJni;->KUCA_CloseT([BB)J

    move-result-wide v0

    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "-[KUCA_CloseT]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public KUCA_KUH_Establish(B)J
    .locals 5
    .parameter "ucatag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, -0x1

    .local v0, ret:J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_KUH_Establish]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    invoke-static {p1}, Landroid/ktuca/KtUcaServiceJni;->KUCA_KUH_Establish(B)J

    move-result-wide v0

    const-string v2, "KT_UCA_SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_KUH_Establish] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public KUCA_KUH_Release(B)J
    .locals 4
    .parameter "ucatag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, -0x1

    .local v0, ret:J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_KUH_Release]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    invoke-static {p1}, Landroid/ktuca/KtUcaServiceJni;->KUCA_KUH_Release(B)J

    move-result-wide v0

    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_KUH_Release]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public KUCA_KUH_Transmit(B[BI[B[I)J
    .locals 4
    .parameter "ucatag"
    .parameter "pbSendBuffer"
    .parameter "cbSendLength"
    .parameter "pbRecvBuffer"
    .parameter "pcbRecvLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, -0x1

    .local v0, ret:J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_KUH_Transmit]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_KUH_Transmit(B[BI[B[I)J

    move-result-wide v0

    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "-[KUCA_KUH_Transmit]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public KUCA_Open([B[B[I)J
    .locals 5
    .parameter "handle"
    .parameter "channel"
    .parameter "channelLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, -0x1

    .local v0, ret:J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_Open]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    invoke-static {p1, p2, p3}, Landroid/ktuca/KtUcaServiceJni;->KUCA_Open([B[B[I)J

    move-result-wide v0

    const-string v2, "KT_UCA_SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_Open] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public KUCA_OpenT([B[B[I)J
    .locals 4
    .parameter "appId"
    .parameter "channel"
    .parameter "channelLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, -0x1

    .local v0, ret:J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_OpenT]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    invoke-static {p1, p2, p3}, Landroid/ktuca/KtUcaServiceJni;->KUCA_OpenT([B[B[I)J

    move-result-wide v0

    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "-[KUCA_OpenT]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public KUCA_Transmit([B[BI[B[I)J
    .locals 5
    .parameter "handle"
    .parameter "input"
    .parameter "inputLen"
    .parameter "output"
    .parameter "outputLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, -0x1

    .local v0, ret:J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_Transmit]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_Transmit([B[BI[B[I)J

    move-result-wide v0

    const-string v2, "KT_UCA_SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_Transmit] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public KUCA_UCAVersion([B[B[I)J
    .locals 5
    .parameter "handle"
    .parameter "output"
    .parameter "outputLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, -0x1

    .local v0, ret:J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_UCAVersion]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    invoke-static {p1, p2, p3}, Landroid/ktuca/KtUcaServiceJni;->KUCA_UCAVersion([B[B[I)J

    move-result-wide v0

    const-string v2, "KT_UCA_SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_UCAVersion] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public KUCA_getHandle([B[B[B[B[I)J
    .locals 8
    .parameter "callerId"
    .parameter "preKey"
    .parameter "appId"
    .parameter "handle"
    .parameter "handleLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, -0x1

    .local v6, ret:J
    const-string v0, "KT_UCA_SERVICE"

    const-string v1, "+[KUCA_getHandle]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/KtUcaServiceJni;->uca_getHandle([B[B[B[B[I)J

    move-result-wide v6

    const-string v0, "KT_UCA_SERVICE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-[KUCA_getHandle] ret : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v6
.end method

.method public KUCA_getICCID([B[B[II[B)J
    .locals 5
    .parameter "handle"
    .parameter "output"
    .parameter "outputLen"
    .parameter "encryptType"
    .parameter "deviceIp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, -0x1

    .local v0, ret:J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_getICCID]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_getICCID([B[B[II[B)J

    move-result-wide v0

    const-string v2, "KT_UCA_SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_getICCID] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public KUCA_getIMSI([B[B[II[B)J
    .locals 5
    .parameter "handle"
    .parameter "output"
    .parameter "outputLen"
    .parameter "encryptType"
    .parameter "deviceIp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, -0x1

    .local v0, ret:J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_getIMSI]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_getIMSI([B[B[II[B)J

    move-result-wide v0

    const-string v2, "KT_UCA_SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_getIMSI] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public KUCA_getMDN([B[B[II[B)J
    .locals 5
    .parameter "handle"
    .parameter "output"
    .parameter "outputLen"
    .parameter "encryptType"
    .parameter "deviceIp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, -0x1

    .local v0, ret:J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_getMDN]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_getMDN([B[B[II[B)J

    move-result-wide v0

    const-string v2, "KT_UCA_SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_getMDN] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public KUCA_getMODEL([B[B[II[B)J
    .locals 5
    .parameter "handle"
    .parameter "output"
    .parameter "outputLen"
    .parameter "encryptType"
    .parameter "deviceIp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, -0x1

    .local v0, ret:J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_getMODEL]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_getMODEL([B[B[II[B)J

    move-result-wide v0

    const-string v2, "KT_UCA_SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_getMODEL] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public KUCA_getMSISDN([B[B[II[B)J
    .locals 8
    .parameter "handle"
    .parameter "output"
    .parameter "outputLen"
    .parameter "encryptType"
    .parameter "deviceIp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, -0x1

    .local v6, ret:J
    const-string v0, "KT_UCA_SERVICE"

    const-string v1, "+[KUCA_getMSISDN]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/KtUcaServiceJni;->uca_getMSISDN([B[B[II[B)J

    move-result-wide v6

    const-string v0, "KT_UCA_SERVICE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-[KUCA_getMSISDN] ret : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v6
.end method

.method public KUCA_getPUID([B[B[II[B)J
    .locals 5
    .parameter "handle"
    .parameter "output"
    .parameter "outputLen"
    .parameter "encryptType"
    .parameter "deviceIp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, -0x1

    .local v0, ret:J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_getPUID]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_getPUID([B[B[II[B)J

    move-result-wide v0

    const-string v2, "KT_UCA_SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_getPUID] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public KUCA_getPinStatus([BI[B[I)J
    .locals 5
    .parameter "handle"
    .parameter "pinId"
    .parameter "output"
    .parameter "outputLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, -0x1

    .local v0, ret:J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_getPinStatus]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    invoke-static {p1, p2, p3, p4}, Landroid/ktuca/KtUcaServiceJni;->KUCA_getPinStatus([BI[B[I)J

    move-result-wide v0

    const-string v2, "KT_UCA_SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_getPinStatus] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public KUCA_getSIMInfo([B[B[I)J
    .locals 5
    .parameter "handle"
    .parameter "output"
    .parameter "outputLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, -0x1

    .local v0, ret:J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_getSIMInfo]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    invoke-static {p1, p2, p3}, Landroid/ktuca/KtUcaServiceJni;->KUCA_getSIMInfo([B[B[I)J

    move-result-wide v0

    const-string v2, "KT_UCA_SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_getSIMInfo] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public KUCA_getSimStatus([B[B)J
    .locals 5
    .parameter "handle"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, -0x1

    .local v0, ret:J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_getSimStatus]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    invoke-static {p1, p2}, Landroid/ktuca/KtUcaServiceJni;->KUCA_getSimStatus([B[B)J

    move-result-wide v0

    const-string v2, "KT_UCA_SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_getSimStatus] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public KUCA_printCHInfo(B)J
    .locals 5
    .parameter "ucatag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, -0x1

    .local v0, ret:J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_printCHInfo]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    invoke-static {p1}, Landroid/ktuca/KtUcaServiceJni;->KUCA_printCHInfo(B)J

    move-result-wide v0

    const-string v2, "KT_UCA_SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_printCHInfo] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public KUCA_usimAUTH([B[B[B[B[I)J
    .locals 5
    .parameter "handle"
    .parameter "rand"
    .parameter "autn"
    .parameter "output"
    .parameter "outputLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, -0x1

    .local v0, ret:J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_usimAUTH]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_usimAUTH([B[B[B[B[I)J

    move-result-wide v0

    const-string v2, "KT_UCA_SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_usimAUTH] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public KUCA_verifyPin([BILjava/lang/String;[B[I)J
    .locals 5
    .parameter "handle"
    .parameter "pinId"
    .parameter "pinCode"
    .parameter "output"
    .parameter "outputLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, -0x1

    .local v0, ret:J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_verifyPin]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_verifyPin([BILjava/lang/String;[B[I)J

    move-result-wide v0

    const-string v2, "KT_UCA_SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_verifyPin] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public getResource()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v0, "2.0.0_R06_110317"

    .local v0, KTUCA_VER:Ljava/lang/String;
    iget v1, p0, Landroid/ktuca/KtUcaService;->referenceCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/ktuca/KtUcaService;->referenceCount:I

    const-string v1, "KT_UCA_SERVICE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+[KtUcaService Ver]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "KT_UCA_SERVICE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ref. Cnt. : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/ktuca/KtUcaService;->referenceCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Landroid/ktuca/KtUcaService;->referenceCount:I

    return v1
.end method

.method public releaseResource()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget v0, p0, Landroid/ktuca/KtUcaService;->referenceCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/ktuca/KtUcaService;->referenceCount:I

    const-string v0, "KT_UCA_SERVICE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ref. Cnt. : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/ktuca/KtUcaService;->referenceCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Landroid/ktuca/KtUcaService;->referenceCount:I

    return v0
.end method
