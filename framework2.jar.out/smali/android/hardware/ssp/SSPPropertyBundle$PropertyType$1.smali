.class final enum Landroid/hardware/ssp/SSPPropertyBundle$PropertyType$1;
.super Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;
.source "SSPPropertyBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;-><init>(Ljava/lang/String;ILandroid/hardware/ssp/SSPPropertyBundle$1;)V

    return-void
.end method


# virtual methods
.method getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()TE;"
        }
    .end annotation

    .prologue
    .line 66
    invoke-static {}, Landroid/hardware/ssp/SSPPropertyBundle;->access$100()[Z

    move-result-object v0

    return-object v0
.end method

.method setValue(Ljava/lang/Object;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, value:Ljava/lang/Object;,"TT;"
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 56
    invoke-static {}, Landroid/hardware/ssp/SSPPropertyBundle;->access$100()[Z

    move-result-object v0

    const/4 v1, 0x0

    check-cast p1, Ljava/lang/Boolean;

    .end local p1           #value:Ljava/lang/Object;,"TT;"
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, v0, v1

    .line 61
    :goto_0
    return-void

    .line 58
    .restart local p1       #value:Ljava/lang/Object;,"TT;"
    :cond_0
    const-string v0, "Cannot cast data type."

    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method
