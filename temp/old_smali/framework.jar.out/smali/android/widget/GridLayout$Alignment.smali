.class public abstract Landroid/widget/GridLayout$Alignment;
.super Ljava/lang/Object;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Alignment"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract getAlignmentValue(Landroid/view/View;I)I
.end method

.method getBounds()Landroid/widget/GridLayout$Bounds;
    .locals 2

    .prologue
    new-instance v0, Landroid/widget/GridLayout$Bounds;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/widget/GridLayout$Bounds;-><init>(Landroid/widget/GridLayout$1;)V

    return-object v0
.end method

.method getSizeInCell(Landroid/view/View;III)I
    .locals 0
    .parameter "view"
    .parameter "viewSize"
    .parameter "cellSize"
    .parameter "measurementType"

    .prologue
    return p2
.end method
