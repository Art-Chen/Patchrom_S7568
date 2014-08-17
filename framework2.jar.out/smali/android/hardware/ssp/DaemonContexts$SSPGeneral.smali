.class public Landroid/hardware/ssp/DaemonContexts$SSPGeneral;
.super Ljava/lang/Object;
.source "DaemonContexts.java"

# interfaces
.implements Landroid/hardware/ssp/IDaemonContexts;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ssp/DaemonContexts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SSPGeneral"
.end annotation


# instance fields
.field protected message:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 66
    const-string v0, ""

    iput-object v0, p0, Landroid/hardware/ssp/DaemonContexts$SSPGeneral;->message:Ljava/lang/String;

    .line 67
    return-void
.end method
