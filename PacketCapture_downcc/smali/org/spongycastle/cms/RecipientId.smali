.class public abstract Lorg/spongycastle/cms/RecipientId;
.super Ljava/lang/Object;
.source "RecipientId.java"

# interfaces
.implements Lorg/spongycastle/util/Selector;


# instance fields
.field private final type:I


# direct methods
.method protected constructor <init>(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lorg/spongycastle/cms/RecipientId;->type:I

    .line 18
    return-void
.end method


# virtual methods
.method public abstract clone()Ljava/lang/Object;
.end method
