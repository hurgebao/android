.class final Lcapt/DecoderKt$decodeAs$1;
.super Lkotlin/jvm/internal/FunctionReference;
.source "decoder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcapt/DecoderKt;->decodeAs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Exception;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReference;",
        "Lkotlin/jvm/functions/Function3",
        "<",
        "Ljava/io/RandomAccessFile;",
        "Lcapt/V1Writer;",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcapt/DecoderKt$decodeAs$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcapt/DecoderKt$decodeAs$1;

    invoke-direct {v0}, Lcapt/DecoderKt$decodeAs$1;-><init>()V

    sput-object v0, Lcapt/DecoderKt$decodeAs$1;->INSTANCE:Lcapt/DecoderKt$decodeAs$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/FunctionReference;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "httpDecoder"

    return-object v0
.end method

.method public final getOwner()Lkotlin/reflect/KDeclarationContainer;
    .locals 2

    const-class v0, Lcapt/HttpKt;

    const-string v1, "decoder_main"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinPackage(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KDeclarationContainer;

    move-result-object v0

    return-object v0
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 1

    const-string v0, "httpDecoder(Ljava/io/RandomAccessFile;Lcapt/V1Writer;Z)V"

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/io/RandomAccessFile;

    check-cast p2, Lcapt/V1Writer;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcapt/DecoderKt$decodeAs$1;->invoke(Ljava/io/RandomAccessFile;Lcapt/V1Writer;Z)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Ljava/io/RandomAccessFile;Lcapt/V1Writer;Z)V
    .locals 1
    .param p1, "p1"    # Ljava/io/RandomAccessFile;
    .param p2, "p2"    # Lcapt/V1Writer;
    .param p3, "p3"    # Z

    .prologue
    const-string v0, "p1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-static {p1, p2, p3}, Lcapt/HttpKt;->httpDecoder(Ljava/io/RandomAccessFile;Lcapt/V1Writer;Z)V

    return-void
.end method
