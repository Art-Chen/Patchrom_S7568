.class abstract Landroid/hardware/ssp/ADaemonParserHeader;
.super Ljava/lang/Object;
.source "ADaemonParserHeader.java"

# interfaces
.implements Landroid/hardware/ssp/IDaemonParser;


# static fields
.field protected static final LIBRARY_DATATYPE_BLE:B = 0x6t

.field protected static final LIBRARY_DATATYPE_DANGERZONE:B = 0x3t

.field protected static final LIBRARY_DATATYPE_GESTURE:B = 0x5t

.field protected static final LIBRARY_DATATYPE_MOTION:B = 0x4t

.field protected static final LIBRARY_DATATYPE_PDR:B = 0x1t

.field protected static final LIBRARY_DATATYPE_PEDOMETER:B = 0x0t

.field protected static final LIBRARY_DATATYPE_ZONE:B = 0x2t

.field protected static final NONLIBRARY_DATATYPE_ACCURACY:B = 0x3t

.field protected static final NONLIBRARY_DATATYPE_ORIENTATION:B = 0x1t

.field protected static final NONLIBRARY_DATATYPE_PDRREFPOINT:B = 0x2t

.field protected static final NOTI_POWER_APSLEEP:B = -0x2et

.field protected static final NOTI_POWER_APWAKEUP:B = -0x2ft

.field protected static final TYPE_LIBRARY:B = 0x1t

.field protected static final TYPE_NONLIBRARY:B = 0x2t

.field protected static final TYPE_NOTI_POWER:B = 0x1t


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected checkPacket(Ljava/util/HashMap;B)Z
    .locals 3
    .parameter
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Byte;",
            "Landroid/hardware/ssp/ADaemonParserData;",
            ">;B)Z"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, parserMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Byte;Landroid/hardware/ssp/ADaemonParserData;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    .line 85
    .local v0, i:Ljava/lang/Byte;
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Byte;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    const/4 v2, 0x1

    .line 90
    .end local v0           #i:Ljava/lang/Byte;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected getParser(B)Landroid/hardware/ssp/ADaemonParserData;
    .locals 1
    .parameter "key"

    .prologue
    .line 70
    const/4 v0, 0x0

    return-object v0
.end method
