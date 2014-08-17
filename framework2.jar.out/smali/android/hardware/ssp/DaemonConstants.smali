.class final Landroid/hardware/ssp/DaemonConstants;
.super Ljava/lang/Object;
.source "DaemonConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/ssp/DaemonConstants$1;,
        Landroid/hardware/ssp/DaemonConstants$SSPPropertys;,
        Landroid/hardware/ssp/DaemonConstants$SSPRunners;,
        Landroid/hardware/ssp/DaemonConstants$SSPAggregators;,
        Landroid/hardware/ssp/DaemonConstants$SSPServices;,
        Landroid/hardware/ssp/DaemonConstants$SSPMode;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 253
    return-void
.end method

.method protected static getSSPProperty(I)Landroid/hardware/ssp/DaemonConstants$SSPPropertys;
    .locals 5
    .parameter "property"

    .prologue
    .line 355
    invoke-static {}, Landroid/hardware/ssp/DaemonConstants$SSPPropertys;->values()[Landroid/hardware/ssp/DaemonConstants$SSPPropertys;

    move-result-object v0

    .local v0, arr$:[Landroid/hardware/ssp/DaemonConstants$SSPPropertys;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 356
    .local v1, i:Landroid/hardware/ssp/DaemonConstants$SSPPropertys;
    #getter for: Landroid/hardware/ssp/DaemonConstants$SSPPropertys;->property:I
    invoke-static {v1}, Landroid/hardware/ssp/DaemonConstants$SSPPropertys;->access$100(Landroid/hardware/ssp/DaemonConstants$SSPPropertys;)I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 361
    .end local v1           #i:Landroid/hardware/ssp/DaemonConstants$SSPPropertys;
    :goto_1
    return-object v1

    .line 355
    .restart local v1       #i:Landroid/hardware/ssp/DaemonConstants$SSPPropertys;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 361
    .end local v1           #i:Landroid/hardware/ssp/DaemonConstants$SSPPropertys;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected static getSSPService(I)Landroid/hardware/ssp/DaemonConstants$SSPServices;
    .locals 5
    .parameter "service"

    .prologue
    .line 338
    invoke-static {}, Landroid/hardware/ssp/DaemonConstants$SSPServices;->values()[Landroid/hardware/ssp/DaemonConstants$SSPServices;

    move-result-object v0

    .local v0, arr$:[Landroid/hardware/ssp/DaemonConstants$SSPServices;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 339
    .local v1, i:Landroid/hardware/ssp/DaemonConstants$SSPServices;
    iget v4, v1, Landroid/hardware/ssp/DaemonConstants$SSPServices;->service:I

    if-ne v4, p0, :cond_0

    .line 344
    .end local v1           #i:Landroid/hardware/ssp/DaemonConstants$SSPServices;
    :goto_1
    return-object v1

    .line 338
    .restart local v1       #i:Landroid/hardware/ssp/DaemonConstants$SSPServices;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 344
    .end local v1           #i:Landroid/hardware/ssp/DaemonConstants$SSPServices;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected static varargs selectService([Landroid/hardware/ssp/DaemonConstants$SSPServices;)Ljava/util/Set;
    .locals 6
    .parameter "services"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/hardware/ssp/DaemonConstants$SSPServices;",
            ")",
            "Ljava/util/Set",
            "<",
            "Landroid/hardware/ssp/DaemonConstants$SSPServices;",
            ">;"
        }
    .end annotation

    .prologue
    .line 317
    array-length v5, p0

    if-gtz v5, :cond_1

    .line 318
    const/4 v1, 0x0

    .line 327
    :cond_0
    return-object v1

    .line 321
    :cond_1
    const-class v5, Landroid/hardware/ssp/DaemonConstants$SSPServices;

    invoke-static {v5}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 323
    .local v1, enumService:Ljava/util/Set;,"Ljava/util/Set<Landroid/hardware/ssp/DaemonConstants$SSPServices;>;"
    move-object v0, p0

    .local v0, arr$:[Landroid/hardware/ssp/DaemonConstants$SSPServices;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 324
    .local v2, i:Landroid/hardware/ssp/DaemonConstants$SSPServices;
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 323
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
