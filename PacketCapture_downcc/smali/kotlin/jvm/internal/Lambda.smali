.class public abstract Lkotlin/jvm/internal/Lambda;
.super Ljava/lang/Object;
.source "Lambda.kt"

# interfaces
.implements Lkotlin/jvm/internal/FunctionBase;


# instance fields
.field private final arity:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "arity"    # I

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lkotlin/jvm/internal/Lambda;->arity:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->renderLambdaToString(Lkotlin/jvm/internal/Lambda;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
