.class public final Lkotlin/jvm/internal/StringCompanionObject;
.super Ljava/lang/Object;
.source "PrimitiveCompanionObjects.kt"


# static fields
.field public static final INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lkotlin/jvm/internal/StringCompanionObject;

    invoke-direct {v0}, Lkotlin/jvm/internal/StringCompanionObject;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p0, Lkotlin/jvm/internal/StringCompanionObject;

    .end local p0    # "this":Lkotlin/jvm/internal/StringCompanionObject;
    sput-object p0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    return-void
.end method
