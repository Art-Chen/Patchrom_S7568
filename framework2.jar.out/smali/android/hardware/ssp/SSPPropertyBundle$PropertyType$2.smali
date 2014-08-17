.class final enum Landroid/hardware/ssp/SSPPropertyBundle$PropertyType$2;
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
    .line 71
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
    .line 90
    invoke-static {}, Landroid/hardware/ssp/SSPPropertyBundle;->access$200()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method setValue(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, value:Ljava/lang/Object;,"TT;"
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 75
    check-cast p1, Ljava/lang/Integer;

    .end local p1           #value:Ljava/lang/Object;,"TT;"
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/hardware/ssp/SSPPropertyBundle;->access$202(I)I

    .line 85
    :goto_0
    return-void

    .line 76
    .restart local p1       #value:Ljava/lang/Object;,"TT;"
    :cond_0
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 77
    check-cast p1, Ljava/lang/Long;

    .end local p1           #value:Ljava/lang/Object;,"TT;"
    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/hardware/ssp/SSPPropertyBundle;->access$202(I)I

    goto :goto_0

    .line 78
    .restart local p1       #value:Ljava/lang/Object;,"TT;"
    :cond_1
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 79
    check-cast p1, Ljava/lang/Float;

    .end local p1           #value:Ljava/lang/Object;,"TT;"
    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/hardware/ssp/SSPPropertyBundle;->access$202(I)I

    goto :goto_0

    .line 80
    .restart local p1       #value:Ljava/lang/Object;,"TT;"
    :cond_2
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_3

    .line 81
    check-cast p1, Ljava/lang/Double;

    .end local p1           #value:Ljava/lang/Object;,"TT;"
    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/hardware/ssp/SSPPropertyBundle;->access$202(I)I

    goto :goto_0

    .line 83
    .restart local p1       #value:Ljava/lang/Object;,"TT;"
    :cond_3
    const-string v0, "Cannot cast data type."

    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method
