.class public Landroid/renderscript/Long3;
.super Ljava/lang/Object;
.source "Long3.java"


# instance fields
.field public x:J

.field public y:J

.field public z:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 0
    .parameter "initX"
    .parameter "initY"
    .parameter "initZ"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/renderscript/Long3;->x:J

    iput-wide p3, p0, Landroid/renderscript/Long3;->y:J

    iput-wide p5, p0, Landroid/renderscript/Long3;->z:J

    return-void
.end method
