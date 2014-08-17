.class abstract Landroid/hardware/ssp/ADaemonParserData;
.super Ljava/lang/Object;
.source "ADaemonParserData.java"

# interfaces
.implements Landroid/hardware/ssp/IDaemonParser;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected checkPacket([BI)Z
    .locals 1
    .parameter "packet"
    .parameter "size"

    .prologue
    .line 62
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 63
    const/4 v0, 0x0

    .line 65
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected clear()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method protected abstract display()V
.end method

.method protected getResult()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/ssp/IDaemonParserMsgType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract parse([BI)I
.end method
