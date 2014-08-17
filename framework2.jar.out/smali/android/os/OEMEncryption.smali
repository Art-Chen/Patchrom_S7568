.class public Landroid/os/OEMEncryption;
.super Ljava/lang/Object;
.source "OEMEncryption.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroid/os/OEMEncryption;
    .locals 2
    .parameter "context"

    .prologue
    .line 10
    const-class v0, Landroid/os/OEMEncryption;

    monitor-enter v0

    const/4 v1, 0x0

    monitor-exit v0

    return-object v1
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 17
    return-void
.end method
