import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class DataSubImagesFigureInfoValue : Tea.TeaModel {
    public class FigureDetails : Tea.TeaModel {
        public class FigurePoints : Tea.TeaModel {
            public var x: Int32?

            public var y: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.x != nil {
                    map["X"] = self.x!
                }
                if self.y != nil {
                    map["Y"] = self.y!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("X") && dict["X"] != nil {
                    self.x = dict["X"] as! Int32
                }
                if dict.keys.contains("Y") && dict["Y"] != nil {
                    self.y = dict["Y"] as! Int32
                }
            }
        }
        public class FigureRect : Tea.TeaModel {
            public var centerX: Int32?

            public var centerY: Int32?

            public var width: Int32?

            public var height: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.centerX != nil {
                    map["CenterX"] = self.centerX!
                }
                if self.centerY != nil {
                    map["CenterY"] = self.centerY!
                }
                if self.width != nil {
                    map["Width"] = self.width!
                }
                if self.height != nil {
                    map["Height"] = self.height!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CenterX") && dict["CenterX"] != nil {
                    self.centerX = dict["CenterX"] as! Int32
                }
                if dict.keys.contains("CenterY") && dict["CenterY"] != nil {
                    self.centerY = dict["CenterY"] as! Int32
                }
                if dict.keys.contains("Width") && dict["Width"] != nil {
                    self.width = dict["Width"] as! Int32
                }
                if dict.keys.contains("Height") && dict["Height"] != nil {
                    self.height = dict["Height"] as! Int32
                }
            }
        }
        public var type: String?

        public var data: Any?

        public var figurePoints: [DataSubImagesFigureInfoValue.FigureDetails.FigurePoints]?

        public var figureRect: DataSubImagesFigureInfoValue.FigureDetails.FigureRect?

        public var figureAngle: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.figureRect?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.data != nil {
                map["Data"] = self.data!
            }
            if self.figurePoints != nil {
                var tmp : [Any] = []
                for k in self.figurePoints! {
                    tmp.append(k.toMap())
                }
                map["FigurePoints"] = tmp
            }
            if self.figureRect != nil {
                map["FigureRect"] = self.figureRect?.toMap()
            }
            if self.figureAngle != nil {
                map["FigureAngle"] = self.figureAngle!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("Data") && dict["Data"] != nil {
                self.data = dict["Data"] as! Any
            }
            if dict.keys.contains("FigurePoints") && dict["FigurePoints"] != nil {
                var tmp : [DataSubImagesFigureInfoValue.FigureDetails.FigurePoints] = []
                for v in dict["FigurePoints"] as! [Any] {
                    var model = DataSubImagesFigureInfoValue.FigureDetails.FigurePoints()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.figurePoints = tmp
            }
            if dict.keys.contains("FigureRect") && dict["FigureRect"] != nil {
                var model = DataSubImagesFigureInfoValue.FigureDetails.FigureRect()
                model.fromMap(dict["FigureRect"] as! [String: Any])
                self.figureRect = model
            }
            if dict.keys.contains("FigureAngle") && dict["FigureAngle"] != nil {
                self.figureAngle = dict["FigureAngle"] as! Int32
            }
        }
    }
    public var figureCount: Int32?

    public var figureDetails: [DataSubImagesFigureInfoValue.FigureDetails]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.figureCount != nil {
            map["FigureCount"] = self.figureCount!
        }
        if self.figureDetails != nil {
            var tmp : [Any] = []
            for k in self.figureDetails! {
                tmp.append(k.toMap())
            }
            map["FigureDetails"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FigureCount") && dict["FigureCount"] != nil {
            self.figureCount = dict["FigureCount"] as! Int32
        }
        if dict.keys.contains("FigureDetails") && dict["FigureDetails"] != nil {
            var tmp : [DataSubImagesFigureInfoValue.FigureDetails] = []
            for v in dict["FigureDetails"] as! [Any] {
                var model = DataSubImagesFigureInfoValue.FigureDetails()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.figureDetails = tmp
        }
    }
}

public class DataSubImagesKvInfoKvDetailsValue : Tea.TeaModel {
    public class ValuePoints : Tea.TeaModel {
        public var x: Int32?

        public var y: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.x != nil {
                map["X"] = self.x!
            }
            if self.y != nil {
                map["Y"] = self.y!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("X") && dict["X"] != nil {
                self.x = dict["X"] as! Int32
            }
            if dict.keys.contains("Y") && dict["Y"] != nil {
                self.y = dict["Y"] as! Int32
            }
        }
    }
    public class ValueRect : Tea.TeaModel {
        public var centerX: Int32?

        public var centerY: Int32?

        public var width: Int32?

        public var height: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.centerX != nil {
                map["CenterX"] = self.centerX!
            }
            if self.centerY != nil {
                map["CenterY"] = self.centerY!
            }
            if self.width != nil {
                map["Width"] = self.width!
            }
            if self.height != nil {
                map["Height"] = self.height!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CenterX") && dict["CenterX"] != nil {
                self.centerX = dict["CenterX"] as! Int32
            }
            if dict.keys.contains("CenterY") && dict["CenterY"] != nil {
                self.centerY = dict["CenterY"] as! Int32
            }
            if dict.keys.contains("Width") && dict["Width"] != nil {
                self.width = dict["Width"] as! Int32
            }
            if dict.keys.contains("Height") && dict["Height"] != nil {
                self.height = dict["Height"] as! Int32
            }
        }
    }
    public var keyName: String?

    public var keyConfidence: Int32?

    public var value: String?

    public var valueConfidence: Int32?

    public var valuePoints: [DataSubImagesKvInfoKvDetailsValue.ValuePoints]?

    public var valueRect: DataSubImagesKvInfoKvDetailsValue.ValueRect?

    public var valueAngle: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.valueRect?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keyName != nil {
            map["KeyName"] = self.keyName!
        }
        if self.keyConfidence != nil {
            map["KeyConfidence"] = self.keyConfidence!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        if self.valueConfidence != nil {
            map["ValueConfidence"] = self.valueConfidence!
        }
        if self.valuePoints != nil {
            var tmp : [Any] = []
            for k in self.valuePoints! {
                tmp.append(k.toMap())
            }
            map["ValuePoints"] = tmp
        }
        if self.valueRect != nil {
            map["ValueRect"] = self.valueRect?.toMap()
        }
        if self.valueAngle != nil {
            map["ValueAngle"] = self.valueAngle!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("KeyName") && dict["KeyName"] != nil {
            self.keyName = dict["KeyName"] as! String
        }
        if dict.keys.contains("KeyConfidence") && dict["KeyConfidence"] != nil {
            self.keyConfidence = dict["KeyConfidence"] as! Int32
        }
        if dict.keys.contains("Value") && dict["Value"] != nil {
            self.value = dict["Value"] as! String
        }
        if dict.keys.contains("ValueConfidence") && dict["ValueConfidence"] != nil {
            self.valueConfidence = dict["ValueConfidence"] as! Int32
        }
        if dict.keys.contains("ValuePoints") && dict["ValuePoints"] != nil {
            var tmp : [DataSubImagesKvInfoKvDetailsValue.ValuePoints] = []
            for v in dict["ValuePoints"] as! [Any] {
                var model = DataSubImagesKvInfoKvDetailsValue.ValuePoints()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.valuePoints = tmp
        }
        if dict.keys.contains("ValueRect") && dict["ValueRect"] != nil {
            var model = DataSubImagesKvInfoKvDetailsValue.ValueRect()
            model.fromMap(dict["ValueRect"] as! [String: Any])
            self.valueRect = model
        }
        if dict.keys.contains("ValueAngle") && dict["ValueAngle"] != nil {
            self.valueAngle = dict["ValueAngle"] as! Int32
        }
    }
}

public class RecognizeAdvancedRequest : Tea.TeaModel {
    public var needRotate: Bool?

    public var needSortPage: Bool?

    public var noStamp: Bool?

    public var outputCharInfo: Bool?

    public var outputFigure: Bool?

    public var outputTable: Bool?

    public var paragraph: Bool?

    public var row: Bool?

    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.needRotate != nil {
            map["NeedRotate"] = self.needRotate!
        }
        if self.needSortPage != nil {
            map["NeedSortPage"] = self.needSortPage!
        }
        if self.noStamp != nil {
            map["NoStamp"] = self.noStamp!
        }
        if self.outputCharInfo != nil {
            map["OutputCharInfo"] = self.outputCharInfo!
        }
        if self.outputFigure != nil {
            map["OutputFigure"] = self.outputFigure!
        }
        if self.outputTable != nil {
            map["OutputTable"] = self.outputTable!
        }
        if self.paragraph != nil {
            map["Paragraph"] = self.paragraph!
        }
        if self.row != nil {
            map["Row"] = self.row!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NeedRotate") && dict["NeedRotate"] != nil {
            self.needRotate = dict["NeedRotate"] as! Bool
        }
        if dict.keys.contains("NeedSortPage") && dict["NeedSortPage"] != nil {
            self.needSortPage = dict["NeedSortPage"] as! Bool
        }
        if dict.keys.contains("NoStamp") && dict["NoStamp"] != nil {
            self.noStamp = dict["NoStamp"] as! Bool
        }
        if dict.keys.contains("OutputCharInfo") && dict["OutputCharInfo"] != nil {
            self.outputCharInfo = dict["OutputCharInfo"] as! Bool
        }
        if dict.keys.contains("OutputFigure") && dict["OutputFigure"] != nil {
            self.outputFigure = dict["OutputFigure"] as! Bool
        }
        if dict.keys.contains("OutputTable") && dict["OutputTable"] != nil {
            self.outputTable = dict["OutputTable"] as! Bool
        }
        if dict.keys.contains("Paragraph") && dict["Paragraph"] != nil {
            self.paragraph = dict["Paragraph"] as! Bool
        }
        if dict.keys.contains("Row") && dict["Row"] != nil {
            self.row = dict["Row"] as! Bool
        }
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeAdvancedResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeAdvancedResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeAdvancedResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeAdvancedResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeAirItineraryRequest : Tea.TeaModel {
    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeAirItineraryResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeAirItineraryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeAirItineraryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeAirItineraryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeAllTextRequest : Tea.TeaModel {
    public class AdvancedConfig : Tea.TeaModel {
        public var isHandWritingTable: Bool?

        public var isLineLessTable: Bool?

        public var outputCharInfo: Bool?

        public var outputParagraph: Bool?

        public var outputRow: Bool?

        public var outputTable: Bool?

        public var outputTableExcel: Bool?

        public var outputTableHtml: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.isHandWritingTable != nil {
                map["IsHandWritingTable"] = self.isHandWritingTable!
            }
            if self.isLineLessTable != nil {
                map["IsLineLessTable"] = self.isLineLessTable!
            }
            if self.outputCharInfo != nil {
                map["OutputCharInfo"] = self.outputCharInfo!
            }
            if self.outputParagraph != nil {
                map["OutputParagraph"] = self.outputParagraph!
            }
            if self.outputRow != nil {
                map["OutputRow"] = self.outputRow!
            }
            if self.outputTable != nil {
                map["OutputTable"] = self.outputTable!
            }
            if self.outputTableExcel != nil {
                map["OutputTableExcel"] = self.outputTableExcel!
            }
            if self.outputTableHtml != nil {
                map["OutputTableHtml"] = self.outputTableHtml!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IsHandWritingTable") && dict["IsHandWritingTable"] != nil {
                self.isHandWritingTable = dict["IsHandWritingTable"] as! Bool
            }
            if dict.keys.contains("IsLineLessTable") && dict["IsLineLessTable"] != nil {
                self.isLineLessTable = dict["IsLineLessTable"] as! Bool
            }
            if dict.keys.contains("OutputCharInfo") && dict["OutputCharInfo"] != nil {
                self.outputCharInfo = dict["OutputCharInfo"] as! Bool
            }
            if dict.keys.contains("OutputParagraph") && dict["OutputParagraph"] != nil {
                self.outputParagraph = dict["OutputParagraph"] as! Bool
            }
            if dict.keys.contains("OutputRow") && dict["OutputRow"] != nil {
                self.outputRow = dict["OutputRow"] as! Bool
            }
            if dict.keys.contains("OutputTable") && dict["OutputTable"] != nil {
                self.outputTable = dict["OutputTable"] as! Bool
            }
            if dict.keys.contains("OutputTableExcel") && dict["OutputTableExcel"] != nil {
                self.outputTableExcel = dict["OutputTableExcel"] as! Bool
            }
            if dict.keys.contains("OutputTableHtml") && dict["OutputTableHtml"] != nil {
                self.outputTableHtml = dict["OutputTableHtml"] as! Bool
            }
        }
    }
    public class IdCardConfig : Tea.TeaModel {
        public var outputIdCardQuality: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.outputIdCardQuality != nil {
                map["OutputIdCardQuality"] = self.outputIdCardQuality!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("OutputIdCardQuality") && dict["OutputIdCardQuality"] != nil {
                self.outputIdCardQuality = dict["OutputIdCardQuality"] as! Bool
            }
        }
    }
    public class InternationalIdCardConfig : Tea.TeaModel {
        public var country: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.country != nil {
                map["Country"] = self.country!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Country") && dict["Country"] != nil {
                self.country = dict["Country"] as! String
            }
        }
    }
    public class MultiLanConfig : Tea.TeaModel {
        public var languages: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.languages != nil {
                map["Languages"] = self.languages!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Languages") && dict["Languages"] != nil {
                self.languages = dict["Languages"] as! String
            }
        }
    }
    public var advancedConfig: RecognizeAllTextRequest.AdvancedConfig?

    public var idCardConfig: RecognizeAllTextRequest.IdCardConfig?

    public var internationalIdCardConfig: RecognizeAllTextRequest.InternationalIdCardConfig?

    public var multiLanConfig: RecognizeAllTextRequest.MultiLanConfig?

    public var outputBarCode: Bool?

    public var outputCoordinate: [UInt8]?

    public var outputFigure: Bool?

    public var outputKVExcel: Bool?

    public var outputOricoord: Bool?

    public var outputQrcode: Bool?

    public var outputStamp: Bool?

    public var pageNo: Int32?

    public var type: String?

    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.advancedConfig?.validate()
        try self.idCardConfig?.validate()
        try self.internationalIdCardConfig?.validate()
        try self.multiLanConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.advancedConfig != nil {
            map["AdvancedConfig"] = self.advancedConfig?.toMap()
        }
        if self.idCardConfig != nil {
            map["IdCardConfig"] = self.idCardConfig?.toMap()
        }
        if self.internationalIdCardConfig != nil {
            map["InternationalIdCardConfig"] = self.internationalIdCardConfig?.toMap()
        }
        if self.multiLanConfig != nil {
            map["MultiLanConfig"] = self.multiLanConfig?.toMap()
        }
        if self.outputBarCode != nil {
            map["OutputBarCode"] = self.outputBarCode!
        }
        if self.outputCoordinate != nil {
            map["OutputCoordinate"] = self.outputCoordinate!
        }
        if self.outputFigure != nil {
            map["OutputFigure"] = self.outputFigure!
        }
        if self.outputKVExcel != nil {
            map["OutputKVExcel"] = self.outputKVExcel!
        }
        if self.outputOricoord != nil {
            map["OutputOricoord"] = self.outputOricoord!
        }
        if self.outputQrcode != nil {
            map["OutputQrcode"] = self.outputQrcode!
        }
        if self.outputStamp != nil {
            map["OutputStamp"] = self.outputStamp!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AdvancedConfig") && dict["AdvancedConfig"] != nil {
            var model = RecognizeAllTextRequest.AdvancedConfig()
            model.fromMap(dict["AdvancedConfig"] as! [String: Any])
            self.advancedConfig = model
        }
        if dict.keys.contains("IdCardConfig") && dict["IdCardConfig"] != nil {
            var model = RecognizeAllTextRequest.IdCardConfig()
            model.fromMap(dict["IdCardConfig"] as! [String: Any])
            self.idCardConfig = model
        }
        if dict.keys.contains("InternationalIdCardConfig") && dict["InternationalIdCardConfig"] != nil {
            var model = RecognizeAllTextRequest.InternationalIdCardConfig()
            model.fromMap(dict["InternationalIdCardConfig"] as! [String: Any])
            self.internationalIdCardConfig = model
        }
        if dict.keys.contains("MultiLanConfig") && dict["MultiLanConfig"] != nil {
            var model = RecognizeAllTextRequest.MultiLanConfig()
            model.fromMap(dict["MultiLanConfig"] as! [String: Any])
            self.multiLanConfig = model
        }
        if dict.keys.contains("OutputBarCode") && dict["OutputBarCode"] != nil {
            self.outputBarCode = dict["OutputBarCode"] as! Bool
        }
        if dict.keys.contains("OutputCoordinate") && dict["OutputCoordinate"] != nil {
            self.outputCoordinate = dict["OutputCoordinate"] as! [UInt8]
        }
        if dict.keys.contains("OutputFigure") && dict["OutputFigure"] != nil {
            self.outputFigure = dict["OutputFigure"] as! Bool
        }
        if dict.keys.contains("OutputKVExcel") && dict["OutputKVExcel"] != nil {
            self.outputKVExcel = dict["OutputKVExcel"] as! Bool
        }
        if dict.keys.contains("OutputOricoord") && dict["OutputOricoord"] != nil {
            self.outputOricoord = dict["OutputOricoord"] as! Bool
        }
        if dict.keys.contains("OutputQrcode") && dict["OutputQrcode"] != nil {
            self.outputQrcode = dict["OutputQrcode"] as! Bool
        }
        if dict.keys.contains("OutputStamp") && dict["OutputStamp"] != nil {
            self.outputStamp = dict["OutputStamp"] as! Bool
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeAllTextShrinkRequest : Tea.TeaModel {
    public var advancedConfigShrink: String?

    public var idCardConfigShrink: String?

    public var internationalIdCardConfigShrink: String?

    public var multiLanConfigShrink: String?

    public var outputBarCode: Bool?

    public var outputCoordinate: [UInt8]?

    public var outputFigure: Bool?

    public var outputKVExcel: Bool?

    public var outputOricoord: Bool?

    public var outputQrcode: Bool?

    public var outputStamp: Bool?

    public var pageNo: Int32?

    public var type: String?

    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.advancedConfigShrink != nil {
            map["AdvancedConfig"] = self.advancedConfigShrink!
        }
        if self.idCardConfigShrink != nil {
            map["IdCardConfig"] = self.idCardConfigShrink!
        }
        if self.internationalIdCardConfigShrink != nil {
            map["InternationalIdCardConfig"] = self.internationalIdCardConfigShrink!
        }
        if self.multiLanConfigShrink != nil {
            map["MultiLanConfig"] = self.multiLanConfigShrink!
        }
        if self.outputBarCode != nil {
            map["OutputBarCode"] = self.outputBarCode!
        }
        if self.outputCoordinate != nil {
            map["OutputCoordinate"] = self.outputCoordinate!
        }
        if self.outputFigure != nil {
            map["OutputFigure"] = self.outputFigure!
        }
        if self.outputKVExcel != nil {
            map["OutputKVExcel"] = self.outputKVExcel!
        }
        if self.outputOricoord != nil {
            map["OutputOricoord"] = self.outputOricoord!
        }
        if self.outputQrcode != nil {
            map["OutputQrcode"] = self.outputQrcode!
        }
        if self.outputStamp != nil {
            map["OutputStamp"] = self.outputStamp!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AdvancedConfig") && dict["AdvancedConfig"] != nil {
            self.advancedConfigShrink = dict["AdvancedConfig"] as! String
        }
        if dict.keys.contains("IdCardConfig") && dict["IdCardConfig"] != nil {
            self.idCardConfigShrink = dict["IdCardConfig"] as! String
        }
        if dict.keys.contains("InternationalIdCardConfig") && dict["InternationalIdCardConfig"] != nil {
            self.internationalIdCardConfigShrink = dict["InternationalIdCardConfig"] as! String
        }
        if dict.keys.contains("MultiLanConfig") && dict["MultiLanConfig"] != nil {
            self.multiLanConfigShrink = dict["MultiLanConfig"] as! String
        }
        if dict.keys.contains("OutputBarCode") && dict["OutputBarCode"] != nil {
            self.outputBarCode = dict["OutputBarCode"] as! Bool
        }
        if dict.keys.contains("OutputCoordinate") && dict["OutputCoordinate"] != nil {
            self.outputCoordinate = dict["OutputCoordinate"] as! [UInt8]
        }
        if dict.keys.contains("OutputFigure") && dict["OutputFigure"] != nil {
            self.outputFigure = dict["OutputFigure"] as! Bool
        }
        if dict.keys.contains("OutputKVExcel") && dict["OutputKVExcel"] != nil {
            self.outputKVExcel = dict["OutputKVExcel"] as! Bool
        }
        if dict.keys.contains("OutputOricoord") && dict["OutputOricoord"] != nil {
            self.outputOricoord = dict["OutputOricoord"] as! Bool
        }
        if dict.keys.contains("OutputQrcode") && dict["OutputQrcode"] != nil {
            self.outputQrcode = dict["OutputQrcode"] as! Bool
        }
        if dict.keys.contains("OutputStamp") && dict["OutputStamp"] != nil {
            self.outputStamp = dict["OutputStamp"] as! Bool
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeAllTextResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class SubImages : Tea.TeaModel {
            public class BarCodeInfo : Tea.TeaModel {
                public class BarCodeDetails : Tea.TeaModel {
                    public class BarCodePoints : Tea.TeaModel {
                        public var x: Int32?

                        public var y: Int32?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.x != nil {
                                map["X"] = self.x!
                            }
                            if self.y != nil {
                                map["Y"] = self.y!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("X") && dict["X"] != nil {
                                self.x = dict["X"] as! Int32
                            }
                            if dict.keys.contains("Y") && dict["Y"] != nil {
                                self.y = dict["Y"] as! Int32
                            }
                        }
                    }
                    public class BarCodeRect : Tea.TeaModel {
                        public var centerX: Int32?

                        public var centerY: Int32?

                        public var height: Int32?

                        public var width: Int32?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.centerX != nil {
                                map["CenterX"] = self.centerX!
                            }
                            if self.centerY != nil {
                                map["CenterY"] = self.centerY!
                            }
                            if self.height != nil {
                                map["Height"] = self.height!
                            }
                            if self.width != nil {
                                map["Width"] = self.width!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("CenterX") && dict["CenterX"] != nil {
                                self.centerX = dict["CenterX"] as! Int32
                            }
                            if dict.keys.contains("CenterY") && dict["CenterY"] != nil {
                                self.centerY = dict["CenterY"] as! Int32
                            }
                            if dict.keys.contains("Height") && dict["Height"] != nil {
                                self.height = dict["Height"] as! Int32
                            }
                            if dict.keys.contains("Width") && dict["Width"] != nil {
                                self.width = dict["Width"] as! Int32
                            }
                        }
                    }
                    public var barCodeAngle: Int32?

                    public var barCodePoints: [RecognizeAllTextResponseBody.Data.SubImages.BarCodeInfo.BarCodeDetails.BarCodePoints]?

                    public var barCodeRect: RecognizeAllTextResponseBody.Data.SubImages.BarCodeInfo.BarCodeDetails.BarCodeRect?

                    public var data: [UInt8]?

                    public var type: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.barCodeRect?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.barCodeAngle != nil {
                            map["BarCodeAngle"] = self.barCodeAngle!
                        }
                        if self.barCodePoints != nil {
                            var tmp : [Any] = []
                            for k in self.barCodePoints! {
                                tmp.append(k.toMap())
                            }
                            map["BarCodePoints"] = tmp
                        }
                        if self.barCodeRect != nil {
                            map["BarCodeRect"] = self.barCodeRect?.toMap()
                        }
                        if self.data != nil {
                            map["Data"] = self.data!
                        }
                        if self.type != nil {
                            map["Type"] = self.type!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("BarCodeAngle") && dict["BarCodeAngle"] != nil {
                            self.barCodeAngle = dict["BarCodeAngle"] as! Int32
                        }
                        if dict.keys.contains("BarCodePoints") && dict["BarCodePoints"] != nil {
                            var tmp : [RecognizeAllTextResponseBody.Data.SubImages.BarCodeInfo.BarCodeDetails.BarCodePoints] = []
                            for v in dict["BarCodePoints"] as! [Any] {
                                var model = RecognizeAllTextResponseBody.Data.SubImages.BarCodeInfo.BarCodeDetails.BarCodePoints()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.barCodePoints = tmp
                        }
                        if dict.keys.contains("BarCodeRect") && dict["BarCodeRect"] != nil {
                            var model = RecognizeAllTextResponseBody.Data.SubImages.BarCodeInfo.BarCodeDetails.BarCodeRect()
                            model.fromMap(dict["BarCodeRect"] as! [String: Any])
                            self.barCodeRect = model
                        }
                        if dict.keys.contains("Data") && dict["Data"] != nil {
                            self.data = dict["Data"] as! [UInt8]
                        }
                        if dict.keys.contains("Type") && dict["Type"] != nil {
                            self.type = dict["Type"] as! String
                        }
                    }
                }
                public var barCodeCount: Int32?

                public var barCodeDetails: [RecognizeAllTextResponseBody.Data.SubImages.BarCodeInfo.BarCodeDetails]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.barCodeCount != nil {
                        map["BarCodeCount"] = self.barCodeCount!
                    }
                    if self.barCodeDetails != nil {
                        var tmp : [Any] = []
                        for k in self.barCodeDetails! {
                            tmp.append(k.toMap())
                        }
                        map["BarCodeDetails"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("BarCodeCount") && dict["BarCodeCount"] != nil {
                        self.barCodeCount = dict["BarCodeCount"] as! Int32
                    }
                    if dict.keys.contains("BarCodeDetails") && dict["BarCodeDetails"] != nil {
                        var tmp : [RecognizeAllTextResponseBody.Data.SubImages.BarCodeInfo.BarCodeDetails] = []
                        for v in dict["BarCodeDetails"] as! [Any] {
                            var model = RecognizeAllTextResponseBody.Data.SubImages.BarCodeInfo.BarCodeDetails()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.barCodeDetails = tmp
                    }
                }
            }
            public class BlockInfo : Tea.TeaModel {
                public class BlockDetails : Tea.TeaModel {
                    public class BlockPoints : Tea.TeaModel {
                        public var x: Int32?

                        public var y: Int32?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.x != nil {
                                map["X"] = self.x!
                            }
                            if self.y != nil {
                                map["Y"] = self.y!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("X") && dict["X"] != nil {
                                self.x = dict["X"] as! Int32
                            }
                            if dict.keys.contains("Y") && dict["Y"] != nil {
                                self.y = dict["Y"] as! Int32
                            }
                        }
                    }
                    public class BlockRect : Tea.TeaModel {
                        public var centerX: Int32?

                        public var centerY: Int32?

                        public var height: Int32?

                        public var width: Int32?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.centerX != nil {
                                map["CenterX"] = self.centerX!
                            }
                            if self.centerY != nil {
                                map["CenterY"] = self.centerY!
                            }
                            if self.height != nil {
                                map["Height"] = self.height!
                            }
                            if self.width != nil {
                                map["Width"] = self.width!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("CenterX") && dict["CenterX"] != nil {
                                self.centerX = dict["CenterX"] as! Int32
                            }
                            if dict.keys.contains("CenterY") && dict["CenterY"] != nil {
                                self.centerY = dict["CenterY"] as! Int32
                            }
                            if dict.keys.contains("Height") && dict["Height"] != nil {
                                self.height = dict["Height"] as! Int32
                            }
                            if dict.keys.contains("Width") && dict["Width"] != nil {
                                self.width = dict["Width"] as! Int32
                            }
                        }
                    }
                    public class CharInfos : Tea.TeaModel {
                        public class CharPoints : Tea.TeaModel {
                            public var x: Int32?

                            public var y: Int32?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.x != nil {
                                    map["X"] = self.x!
                                }
                                if self.y != nil {
                                    map["Y"] = self.y!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("X") && dict["X"] != nil {
                                    self.x = dict["X"] as! Int32
                                }
                                if dict.keys.contains("Y") && dict["Y"] != nil {
                                    self.y = dict["Y"] as! Int32
                                }
                            }
                        }
                        public class CharRect : Tea.TeaModel {
                            public var centerX: Int32?

                            public var centerY: Int32?

                            public var height: Int32?

                            public var width: Int32?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.centerX != nil {
                                    map["CenterX"] = self.centerX!
                                }
                                if self.centerY != nil {
                                    map["CenterY"] = self.centerY!
                                }
                                if self.height != nil {
                                    map["Height"] = self.height!
                                }
                                if self.width != nil {
                                    map["Width"] = self.width!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("CenterX") && dict["CenterX"] != nil {
                                    self.centerX = dict["CenterX"] as! Int32
                                }
                                if dict.keys.contains("CenterY") && dict["CenterY"] != nil {
                                    self.centerY = dict["CenterY"] as! Int32
                                }
                                if dict.keys.contains("Height") && dict["Height"] != nil {
                                    self.height = dict["Height"] as! Int32
                                }
                                if dict.keys.contains("Width") && dict["Width"] != nil {
                                    self.width = dict["Width"] as! Int32
                                }
                            }
                        }
                        public var charConfidence: Int32?

                        public var charContent: String?

                        public var charId: Int32?

                        public var charPoints: [RecognizeAllTextResponseBody.Data.SubImages.BlockInfo.BlockDetails.CharInfos.CharPoints]?

                        public var charRect: RecognizeAllTextResponseBody.Data.SubImages.BlockInfo.BlockDetails.CharInfos.CharRect?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                            try self.charRect?.validate()
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.charConfidence != nil {
                                map["CharConfidence"] = self.charConfidence!
                            }
                            if self.charContent != nil {
                                map["CharContent"] = self.charContent!
                            }
                            if self.charId != nil {
                                map["CharId"] = self.charId!
                            }
                            if self.charPoints != nil {
                                var tmp : [Any] = []
                                for k in self.charPoints! {
                                    tmp.append(k.toMap())
                                }
                                map["CharPoints"] = tmp
                            }
                            if self.charRect != nil {
                                map["CharRect"] = self.charRect?.toMap()
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("CharConfidence") && dict["CharConfidence"] != nil {
                                self.charConfidence = dict["CharConfidence"] as! Int32
                            }
                            if dict.keys.contains("CharContent") && dict["CharContent"] != nil {
                                self.charContent = dict["CharContent"] as! String
                            }
                            if dict.keys.contains("CharId") && dict["CharId"] != nil {
                                self.charId = dict["CharId"] as! Int32
                            }
                            if dict.keys.contains("CharPoints") && dict["CharPoints"] != nil {
                                var tmp : [RecognizeAllTextResponseBody.Data.SubImages.BlockInfo.BlockDetails.CharInfos.CharPoints] = []
                                for v in dict["CharPoints"] as! [Any] {
                                    var model = RecognizeAllTextResponseBody.Data.SubImages.BlockInfo.BlockDetails.CharInfos.CharPoints()
                                    if v != nil {
                                        model.fromMap(v as! [String: Any])
                                    }
                                    tmp.append(model)
                                }
                                self.charPoints = tmp
                            }
                            if dict.keys.contains("CharRect") && dict["CharRect"] != nil {
                                var model = RecognizeAllTextResponseBody.Data.SubImages.BlockInfo.BlockDetails.CharInfos.CharRect()
                                model.fromMap(dict["CharRect"] as! [String: Any])
                                self.charRect = model
                            }
                        }
                    }
                    public var blockAngle: Int32?

                    public var blockConfidence: Int32?

                    public var blockContent: String?

                    public var blockId: Int32?

                    public var blockPoints: [RecognizeAllTextResponseBody.Data.SubImages.BlockInfo.BlockDetails.BlockPoints]?

                    public var blockRect: RecognizeAllTextResponseBody.Data.SubImages.BlockInfo.BlockDetails.BlockRect?

                    public var charInfos: [RecognizeAllTextResponseBody.Data.SubImages.BlockInfo.BlockDetails.CharInfos]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.blockRect?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.blockAngle != nil {
                            map["BlockAngle"] = self.blockAngle!
                        }
                        if self.blockConfidence != nil {
                            map["BlockConfidence"] = self.blockConfidence!
                        }
                        if self.blockContent != nil {
                            map["BlockContent"] = self.blockContent!
                        }
                        if self.blockId != nil {
                            map["BlockId"] = self.blockId!
                        }
                        if self.blockPoints != nil {
                            var tmp : [Any] = []
                            for k in self.blockPoints! {
                                tmp.append(k.toMap())
                            }
                            map["BlockPoints"] = tmp
                        }
                        if self.blockRect != nil {
                            map["BlockRect"] = self.blockRect?.toMap()
                        }
                        if self.charInfos != nil {
                            var tmp : [Any] = []
                            for k in self.charInfos! {
                                tmp.append(k.toMap())
                            }
                            map["CharInfos"] = tmp
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("BlockAngle") && dict["BlockAngle"] != nil {
                            self.blockAngle = dict["BlockAngle"] as! Int32
                        }
                        if dict.keys.contains("BlockConfidence") && dict["BlockConfidence"] != nil {
                            self.blockConfidence = dict["BlockConfidence"] as! Int32
                        }
                        if dict.keys.contains("BlockContent") && dict["BlockContent"] != nil {
                            self.blockContent = dict["BlockContent"] as! String
                        }
                        if dict.keys.contains("BlockId") && dict["BlockId"] != nil {
                            self.blockId = dict["BlockId"] as! Int32
                        }
                        if dict.keys.contains("BlockPoints") && dict["BlockPoints"] != nil {
                            var tmp : [RecognizeAllTextResponseBody.Data.SubImages.BlockInfo.BlockDetails.BlockPoints] = []
                            for v in dict["BlockPoints"] as! [Any] {
                                var model = RecognizeAllTextResponseBody.Data.SubImages.BlockInfo.BlockDetails.BlockPoints()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.blockPoints = tmp
                        }
                        if dict.keys.contains("BlockRect") && dict["BlockRect"] != nil {
                            var model = RecognizeAllTextResponseBody.Data.SubImages.BlockInfo.BlockDetails.BlockRect()
                            model.fromMap(dict["BlockRect"] as! [String: Any])
                            self.blockRect = model
                        }
                        if dict.keys.contains("CharInfos") && dict["CharInfos"] != nil {
                            var tmp : [RecognizeAllTextResponseBody.Data.SubImages.BlockInfo.BlockDetails.CharInfos] = []
                            for v in dict["CharInfos"] as! [Any] {
                                var model = RecognizeAllTextResponseBody.Data.SubImages.BlockInfo.BlockDetails.CharInfos()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.charInfos = tmp
                        }
                    }
                }
                public var blockCount: Int32?

                public var blockDetails: [RecognizeAllTextResponseBody.Data.SubImages.BlockInfo.BlockDetails]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.blockCount != nil {
                        map["BlockCount"] = self.blockCount!
                    }
                    if self.blockDetails != nil {
                        var tmp : [Any] = []
                        for k in self.blockDetails! {
                            tmp.append(k.toMap())
                        }
                        map["BlockDetails"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("BlockCount") && dict["BlockCount"] != nil {
                        self.blockCount = dict["BlockCount"] as! Int32
                    }
                    if dict.keys.contains("BlockDetails") && dict["BlockDetails"] != nil {
                        var tmp : [RecognizeAllTextResponseBody.Data.SubImages.BlockInfo.BlockDetails] = []
                        for v in dict["BlockDetails"] as! [Any] {
                            var model = RecognizeAllTextResponseBody.Data.SubImages.BlockInfo.BlockDetails()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.blockDetails = tmp
                    }
                }
            }
            public class DocLayouts : Tea.TeaModel {
                public class LayoutPoints : Tea.TeaModel {
                    public var x: Int32?

                    public var y: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.x != nil {
                            map["X"] = self.x!
                        }
                        if self.y != nil {
                            map["Y"] = self.y!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("X") && dict["X"] != nil {
                            self.x = dict["X"] as! Int32
                        }
                        if dict.keys.contains("Y") && dict["Y"] != nil {
                            self.y = dict["Y"] as! Int32
                        }
                    }
                }
                public class LayoutRect : Tea.TeaModel {
                    public var centerX: Int32?

                    public var centerY: Int32?

                    public var height: Int32?

                    public var width: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.centerX != nil {
                            map["CenterX"] = self.centerX!
                        }
                        if self.centerY != nil {
                            map["CenterY"] = self.centerY!
                        }
                        if self.height != nil {
                            map["Height"] = self.height!
                        }
                        if self.width != nil {
                            map["Width"] = self.width!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("CenterX") && dict["CenterX"] != nil {
                            self.centerX = dict["CenterX"] as! Int32
                        }
                        if dict.keys.contains("CenterY") && dict["CenterY"] != nil {
                            self.centerY = dict["CenterY"] as! Int32
                        }
                        if dict.keys.contains("Height") && dict["Height"] != nil {
                            self.height = dict["Height"] as! Int32
                        }
                        if dict.keys.contains("Width") && dict["Width"] != nil {
                            self.width = dict["Width"] as! Int32
                        }
                    }
                }
                public var layoutPoints: [RecognizeAllTextResponseBody.Data.SubImages.DocLayouts.LayoutPoints]?

                public var layoutRect: RecognizeAllTextResponseBody.Data.SubImages.DocLayouts.LayoutRect?

                public var layoutType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.layoutRect?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.layoutPoints != nil {
                        var tmp : [Any] = []
                        for k in self.layoutPoints! {
                            tmp.append(k.toMap())
                        }
                        map["LayoutPoints"] = tmp
                    }
                    if self.layoutRect != nil {
                        map["LayoutRect"] = self.layoutRect?.toMap()
                    }
                    if self.layoutType != nil {
                        map["LayoutType"] = self.layoutType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("LayoutPoints") && dict["LayoutPoints"] != nil {
                        var tmp : [RecognizeAllTextResponseBody.Data.SubImages.DocLayouts.LayoutPoints] = []
                        for v in dict["LayoutPoints"] as! [Any] {
                            var model = RecognizeAllTextResponseBody.Data.SubImages.DocLayouts.LayoutPoints()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.layoutPoints = tmp
                    }
                    if dict.keys.contains("LayoutRect") && dict["LayoutRect"] != nil {
                        var model = RecognizeAllTextResponseBody.Data.SubImages.DocLayouts.LayoutRect()
                        model.fromMap(dict["LayoutRect"] as! [String: Any])
                        self.layoutRect = model
                    }
                    if dict.keys.contains("LayoutType") && dict["LayoutType"] != nil {
                        self.layoutType = dict["LayoutType"] as! String
                    }
                }
            }
            public class DocSpecialTexts : Tea.TeaModel {
                public class SpecialTextPos : Tea.TeaModel {
                    public var x: Int32?

                    public var y: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.x != nil {
                            map["X"] = self.x!
                        }
                        if self.y != nil {
                            map["Y"] = self.y!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("X") && dict["X"] != nil {
                            self.x = dict["X"] as! Int32
                        }
                        if dict.keys.contains("Y") && dict["Y"] != nil {
                            self.y = dict["Y"] as! Int32
                        }
                    }
                }
                public class SpecialTextRect : Tea.TeaModel {
                    public var centerX: Int32?

                    public var centerY: Int32?

                    public var height: Int32?

                    public var width: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.centerX != nil {
                            map["CenterX"] = self.centerX!
                        }
                        if self.centerY != nil {
                            map["CenterY"] = self.centerY!
                        }
                        if self.height != nil {
                            map["Height"] = self.height!
                        }
                        if self.width != nil {
                            map["Width"] = self.width!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("CenterX") && dict["CenterX"] != nil {
                            self.centerX = dict["CenterX"] as! Int32
                        }
                        if dict.keys.contains("CenterY") && dict["CenterY"] != nil {
                            self.centerY = dict["CenterY"] as! Int32
                        }
                        if dict.keys.contains("Height") && dict["Height"] != nil {
                            self.height = dict["Height"] as! Int32
                        }
                        if dict.keys.contains("Width") && dict["Width"] != nil {
                            self.width = dict["Width"] as! Int32
                        }
                    }
                }
                public var specialTextPos: [RecognizeAllTextResponseBody.Data.SubImages.DocSpecialTexts.SpecialTextPos]?

                public var specialTextRect: RecognizeAllTextResponseBody.Data.SubImages.DocSpecialTexts.SpecialTextRect?

                public var specialTextType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.specialTextRect?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.specialTextPos != nil {
                        var tmp : [Any] = []
                        for k in self.specialTextPos! {
                            tmp.append(k.toMap())
                        }
                        map["SpecialTextPos"] = tmp
                    }
                    if self.specialTextRect != nil {
                        map["SpecialTextRect"] = self.specialTextRect?.toMap()
                    }
                    if self.specialTextType != nil {
                        map["SpecialTextType"] = self.specialTextType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("SpecialTextPos") && dict["SpecialTextPos"] != nil {
                        var tmp : [RecognizeAllTextResponseBody.Data.SubImages.DocSpecialTexts.SpecialTextPos] = []
                        for v in dict["SpecialTextPos"] as! [Any] {
                            var model = RecognizeAllTextResponseBody.Data.SubImages.DocSpecialTexts.SpecialTextPos()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.specialTextPos = tmp
                    }
                    if dict.keys.contains("SpecialTextRect") && dict["SpecialTextRect"] != nil {
                        var model = RecognizeAllTextResponseBody.Data.SubImages.DocSpecialTexts.SpecialTextRect()
                        model.fromMap(dict["SpecialTextRect"] as! [String: Any])
                        self.specialTextRect = model
                    }
                    if dict.keys.contains("SpecialTextType") && dict["SpecialTextType"] != nil {
                        self.specialTextType = dict["SpecialTextType"] as! String
                    }
                }
            }
            public class DocSubField : Tea.TeaModel {
                public class SubFieldPos : Tea.TeaModel {
                    public var x: Int32?

                    public var y: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.x != nil {
                            map["X"] = self.x!
                        }
                        if self.y != nil {
                            map["Y"] = self.y!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("X") && dict["X"] != nil {
                            self.x = dict["X"] as! Int32
                        }
                        if dict.keys.contains("Y") && dict["Y"] != nil {
                            self.y = dict["Y"] as! Int32
                        }
                    }
                }
                public class SubFieldRect : Tea.TeaModel {
                    public var centerX: Int32?

                    public var centerY: Int32?

                    public var height: Int32?

                    public var width: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.centerX != nil {
                            map["CenterX"] = self.centerX!
                        }
                        if self.centerY != nil {
                            map["CenterY"] = self.centerY!
                        }
                        if self.height != nil {
                            map["Height"] = self.height!
                        }
                        if self.width != nil {
                            map["Width"] = self.width!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("CenterX") && dict["CenterX"] != nil {
                            self.centerX = dict["CenterX"] as! Int32
                        }
                        if dict.keys.contains("CenterY") && dict["CenterY"] != nil {
                            self.centerY = dict["CenterY"] as! Int32
                        }
                        if dict.keys.contains("Height") && dict["Height"] != nil {
                            self.height = dict["Height"] as! Int32
                        }
                        if dict.keys.contains("Width") && dict["Width"] != nil {
                            self.width = dict["Width"] as! Int32
                        }
                    }
                }
                public var subFieldPos: [RecognizeAllTextResponseBody.Data.SubImages.DocSubField.SubFieldPos]?

                public var subFieldRect: RecognizeAllTextResponseBody.Data.SubImages.DocSubField.SubFieldRect?

                public var subFieldType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.subFieldRect?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.subFieldPos != nil {
                        var tmp : [Any] = []
                        for k in self.subFieldPos! {
                            tmp.append(k.toMap())
                        }
                        map["SubFieldPos"] = tmp
                    }
                    if self.subFieldRect != nil {
                        map["SubFieldRect"] = self.subFieldRect?.toMap()
                    }
                    if self.subFieldType != nil {
                        map["SubFieldType"] = self.subFieldType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("SubFieldPos") && dict["SubFieldPos"] != nil {
                        var tmp : [RecognizeAllTextResponseBody.Data.SubImages.DocSubField.SubFieldPos] = []
                        for v in dict["SubFieldPos"] as! [Any] {
                            var model = RecognizeAllTextResponseBody.Data.SubImages.DocSubField.SubFieldPos()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.subFieldPos = tmp
                    }
                    if dict.keys.contains("SubFieldRect") && dict["SubFieldRect"] != nil {
                        var model = RecognizeAllTextResponseBody.Data.SubImages.DocSubField.SubFieldRect()
                        model.fromMap(dict["SubFieldRect"] as! [String: Any])
                        self.subFieldRect = model
                    }
                    if dict.keys.contains("SubFieldType") && dict["SubFieldType"] != nil {
                        self.subFieldType = dict["SubFieldType"] as! String
                    }
                }
            }
            public class KvInfo : Tea.TeaModel {
                public var data: Any?

                public var kvCount: Int32?

                public var kvDetails: [String: DataSubImagesKvInfoKvDetailsValue]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.data != nil {
                        map["Data"] = self.data!
                    }
                    if self.kvCount != nil {
                        map["KvCount"] = self.kvCount!
                    }
                    if self.kvDetails != nil {
                        var tmp : [String: Any] = [:]
                        for (k, v) in self.kvDetails! {
                            tmp[k] = v.toMap()
                        }
                        map["KvDetails"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Data") && dict["Data"] != nil {
                        self.data = dict["Data"] as! Any
                    }
                    if dict.keys.contains("KvCount") && dict["KvCount"] != nil {
                        self.kvCount = dict["KvCount"] as! Int32
                    }
                    if dict.keys.contains("KvDetails") && dict["KvDetails"] != nil {
                        var tmp : [String: DataSubImagesKvInfoKvDetailsValue] = [:]
                        for (k, v) in dict["KvDetails"] as! [String: Any] {
                            if v != nil {
                                var model = DataSubImagesKvInfoKvDetailsValue()
                                model.fromMap(v as! [String: Any])
                                tmp[k] = model
                            }
                        }
                        self.kvDetails = tmp
                    }
                }
            }
            public class MathInfos : Tea.TeaModel {
                public class MathInfoPoints : Tea.TeaModel {
                    public var x: Int32?

                    public var y: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.x != nil {
                            map["X"] = self.x!
                        }
                        if self.y != nil {
                            map["Y"] = self.y!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("X") && dict["X"] != nil {
                            self.x = dict["X"] as! Int32
                        }
                        if dict.keys.contains("Y") && dict["Y"] != nil {
                            self.y = dict["Y"] as! Int32
                        }
                    }
                }
                public class MathInfoRect : Tea.TeaModel {
                    public var centerX: Int32?

                    public var centerY: Int32?

                    public var height: Int32?

                    public var width: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.centerX != nil {
                            map["CenterX"] = self.centerX!
                        }
                        if self.centerY != nil {
                            map["CenterY"] = self.centerY!
                        }
                        if self.height != nil {
                            map["Height"] = self.height!
                        }
                        if self.width != nil {
                            map["Width"] = self.width!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("CenterX") && dict["CenterX"] != nil {
                            self.centerX = dict["CenterX"] as! Int32
                        }
                        if dict.keys.contains("CenterY") && dict["CenterY"] != nil {
                            self.centerY = dict["CenterY"] as! Int32
                        }
                        if dict.keys.contains("Height") && dict["Height"] != nil {
                            self.height = dict["Height"] as! Int32
                        }
                        if dict.keys.contains("Width") && dict["Width"] != nil {
                            self.width = dict["Width"] as! Int32
                        }
                    }
                }
                public var mathInfoPoints: [RecognizeAllTextResponseBody.Data.SubImages.MathInfos.MathInfoPoints]?

                public var mathInfoRect: RecognizeAllTextResponseBody.Data.SubImages.MathInfos.MathInfoRect?

                public var result: String?

                public var title: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.mathInfoRect?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.mathInfoPoints != nil {
                        var tmp : [Any] = []
                        for k in self.mathInfoPoints! {
                            tmp.append(k.toMap())
                        }
                        map["MathInfoPoints"] = tmp
                    }
                    if self.mathInfoRect != nil {
                        map["MathInfoRect"] = self.mathInfoRect?.toMap()
                    }
                    if self.result != nil {
                        map["Result"] = self.result!
                    }
                    if self.title != nil {
                        map["Title"] = self.title!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("MathInfoPoints") && dict["MathInfoPoints"] != nil {
                        var tmp : [RecognizeAllTextResponseBody.Data.SubImages.MathInfos.MathInfoPoints] = []
                        for v in dict["MathInfoPoints"] as! [Any] {
                            var model = RecognizeAllTextResponseBody.Data.SubImages.MathInfos.MathInfoPoints()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.mathInfoPoints = tmp
                    }
                    if dict.keys.contains("MathInfoRect") && dict["MathInfoRect"] != nil {
                        var model = RecognizeAllTextResponseBody.Data.SubImages.MathInfos.MathInfoRect()
                        model.fromMap(dict["MathInfoRect"] as! [String: Any])
                        self.mathInfoRect = model
                    }
                    if dict.keys.contains("Result") && dict["Result"] != nil {
                        self.result = dict["Result"] as! String
                    }
                    if dict.keys.contains("Title") && dict["Title"] != nil {
                        self.title = dict["Title"] as! String
                    }
                }
            }
            public class NewStyleData : Tea.TeaModel {
                public class DocInfo : Tea.TeaModel {
                    public class Pages : Tea.TeaModel {
                        public var imageWidth: Int32?

                        public var inageHeight: Int32?

                        public var pageIdAllDocs: Int32?

                        public var pageIdCurDoc: Int32?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.imageWidth != nil {
                                map["ImageWidth"] = self.imageWidth!
                            }
                            if self.inageHeight != nil {
                                map["InageHeight"] = self.inageHeight!
                            }
                            if self.pageIdAllDocs != nil {
                                map["PageIdAllDocs"] = self.pageIdAllDocs!
                            }
                            if self.pageIdCurDoc != nil {
                                map["PageIdCurDoc"] = self.pageIdCurDoc!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("ImageWidth") && dict["ImageWidth"] != nil {
                                self.imageWidth = dict["ImageWidth"] as! Int32
                            }
                            if dict.keys.contains("InageHeight") && dict["InageHeight"] != nil {
                                self.inageHeight = dict["InageHeight"] as! Int32
                            }
                            if dict.keys.contains("PageIdAllDocs") && dict["PageIdAllDocs"] != nil {
                                self.pageIdAllDocs = dict["PageIdAllDocs"] as! Int32
                            }
                            if dict.keys.contains("PageIdCurDoc") && dict["PageIdCurDoc"] != nil {
                                self.pageIdCurDoc = dict["PageIdCurDoc"] as! Int32
                            }
                        }
                    }
                    public var pages: [RecognizeAllTextResponseBody.Data.SubImages.NewStyleData.DocInfo.Pages]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.pages != nil {
                            var tmp : [Any] = []
                            for k in self.pages! {
                                tmp.append(k.toMap())
                            }
                            map["Pages"] = tmp
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Pages") && dict["Pages"] != nil {
                            var tmp : [RecognizeAllTextResponseBody.Data.SubImages.NewStyleData.DocInfo.Pages] = []
                            for v in dict["Pages"] as! [Any] {
                                var model = RecognizeAllTextResponseBody.Data.SubImages.NewStyleData.DocInfo.Pages()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.pages = tmp
                        }
                    }
                }
                public class LayoutInfos : Tea.TeaModel {
                    public class LayoutPoints : Tea.TeaModel {
                        public var x: Int32?

                        public var y: Int32?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.x != nil {
                                map["X"] = self.x!
                            }
                            if self.y != nil {
                                map["Y"] = self.y!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("X") && dict["X"] != nil {
                                self.x = dict["X"] as! Int32
                            }
                            if dict.keys.contains("Y") && dict["Y"] != nil {
                                self.y = dict["Y"] as! Int32
                            }
                        }
                    }
                    public class LayoutRect : Tea.TeaModel {
                        public var centerX: Int32?

                        public var centerY: Int32?

                        public var height: Int32?

                        public var width: Int32?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.centerX != nil {
                                map["CenterX"] = self.centerX!
                            }
                            if self.centerY != nil {
                                map["CenterY"] = self.centerY!
                            }
                            if self.height != nil {
                                map["Height"] = self.height!
                            }
                            if self.width != nil {
                                map["Width"] = self.width!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("CenterX") && dict["CenterX"] != nil {
                                self.centerX = dict["CenterX"] as! Int32
                            }
                            if dict.keys.contains("CenterY") && dict["CenterY"] != nil {
                                self.centerY = dict["CenterY"] as! Int32
                            }
                            if dict.keys.contains("Height") && dict["Height"] != nil {
                                self.height = dict["Height"] as! Int32
                            }
                            if dict.keys.contains("Width") && dict["Width"] != nil {
                                self.width = dict["Width"] as! Int32
                            }
                        }
                    }
                    public var alignment: String?

                    public var index: Int32?

                    public var layoutPoints: [RecognizeAllTextResponseBody.Data.SubImages.NewStyleData.LayoutInfos.LayoutPoints]?

                    public var layoutRect: RecognizeAllTextResponseBody.Data.SubImages.NewStyleData.LayoutInfos.LayoutRect?

                    public var pageNum: [Int32]?

                    public var source: String?

                    public var subType: String?

                    public var text: String?

                    public var type: String?

                    public var uniqueID: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.layoutRect?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.alignment != nil {
                            map["Alignment"] = self.alignment!
                        }
                        if self.index != nil {
                            map["Index"] = self.index!
                        }
                        if self.layoutPoints != nil {
                            var tmp : [Any] = []
                            for k in self.layoutPoints! {
                                tmp.append(k.toMap())
                            }
                            map["LayoutPoints"] = tmp
                        }
                        if self.layoutRect != nil {
                            map["LayoutRect"] = self.layoutRect?.toMap()
                        }
                        if self.pageNum != nil {
                            map["PageNum"] = self.pageNum!
                        }
                        if self.source != nil {
                            map["Source"] = self.source!
                        }
                        if self.subType != nil {
                            map["SubType"] = self.subType!
                        }
                        if self.text != nil {
                            map["Text"] = self.text!
                        }
                        if self.type != nil {
                            map["Type"] = self.type!
                        }
                        if self.uniqueID != nil {
                            map["UniqueID"] = self.uniqueID!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Alignment") && dict["Alignment"] != nil {
                            self.alignment = dict["Alignment"] as! String
                        }
                        if dict.keys.contains("Index") && dict["Index"] != nil {
                            self.index = dict["Index"] as! Int32
                        }
                        if dict.keys.contains("LayoutPoints") && dict["LayoutPoints"] != nil {
                            var tmp : [RecognizeAllTextResponseBody.Data.SubImages.NewStyleData.LayoutInfos.LayoutPoints] = []
                            for v in dict["LayoutPoints"] as! [Any] {
                                var model = RecognizeAllTextResponseBody.Data.SubImages.NewStyleData.LayoutInfos.LayoutPoints()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.layoutPoints = tmp
                        }
                        if dict.keys.contains("LayoutRect") && dict["LayoutRect"] != nil {
                            var model = RecognizeAllTextResponseBody.Data.SubImages.NewStyleData.LayoutInfos.LayoutRect()
                            model.fromMap(dict["LayoutRect"] as! [String: Any])
                            self.layoutRect = model
                        }
                        if dict.keys.contains("PageNum") && dict["PageNum"] != nil {
                            self.pageNum = dict["PageNum"] as! [Int32]
                        }
                        if dict.keys.contains("Source") && dict["Source"] != nil {
                            self.source = dict["Source"] as! String
                        }
                        if dict.keys.contains("SubType") && dict["SubType"] != nil {
                            self.subType = dict["SubType"] as! String
                        }
                        if dict.keys.contains("Text") && dict["Text"] != nil {
                            self.text = dict["Text"] as! String
                        }
                        if dict.keys.contains("Type") && dict["Type"] != nil {
                            self.type = dict["Type"] as! String
                        }
                        if dict.keys.contains("UniqueID") && dict["UniqueID"] != nil {
                            self.uniqueID = dict["UniqueID"] as! String
                        }
                    }
                }
                public class Styles : Tea.TeaModel {
                    public var bold: Bool?

                    public var charScale: Double?

                    public var color: String?

                    public var deleteLine: Bool?

                    public var fontName: String?

                    public var fontSize: Int32?

                    public var italic: Bool?

                    public var styleId: Int32?

                    public var underline: Bool?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.bold != nil {
                            map["Bold"] = self.bold!
                        }
                        if self.charScale != nil {
                            map["CharScale"] = self.charScale!
                        }
                        if self.color != nil {
                            map["Color"] = self.color!
                        }
                        if self.deleteLine != nil {
                            map["DeleteLine"] = self.deleteLine!
                        }
                        if self.fontName != nil {
                            map["FontName"] = self.fontName!
                        }
                        if self.fontSize != nil {
                            map["FontSize"] = self.fontSize!
                        }
                        if self.italic != nil {
                            map["Italic"] = self.italic!
                        }
                        if self.styleId != nil {
                            map["StyleId"] = self.styleId!
                        }
                        if self.underline != nil {
                            map["Underline"] = self.underline!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Bold") && dict["Bold"] != nil {
                            self.bold = dict["Bold"] as! Bool
                        }
                        if dict.keys.contains("CharScale") && dict["CharScale"] != nil {
                            self.charScale = dict["CharScale"] as! Double
                        }
                        if dict.keys.contains("Color") && dict["Color"] != nil {
                            self.color = dict["Color"] as! String
                        }
                        if dict.keys.contains("DeleteLine") && dict["DeleteLine"] != nil {
                            self.deleteLine = dict["DeleteLine"] as! Bool
                        }
                        if dict.keys.contains("FontName") && dict["FontName"] != nil {
                            self.fontName = dict["FontName"] as! String
                        }
                        if dict.keys.contains("FontSize") && dict["FontSize"] != nil {
                            self.fontSize = dict["FontSize"] as! Int32
                        }
                        if dict.keys.contains("Italic") && dict["Italic"] != nil {
                            self.italic = dict["Italic"] as! Bool
                        }
                        if dict.keys.contains("StyleId") && dict["StyleId"] != nil {
                            self.styleId = dict["StyleId"] as! Int32
                        }
                        if dict.keys.contains("Underline") && dict["Underline"] != nil {
                            self.underline = dict["Underline"] as! Bool
                        }
                    }
                }
                public var docInfo: RecognizeAllTextResponseBody.Data.SubImages.NewStyleData.DocInfo?

                public var layoutInfos: [RecognizeAllTextResponseBody.Data.SubImages.NewStyleData.LayoutInfos]?

                public var styles: [RecognizeAllTextResponseBody.Data.SubImages.NewStyleData.Styles]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.docInfo?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.docInfo != nil {
                        map["DocInfo"] = self.docInfo?.toMap()
                    }
                    if self.layoutInfos != nil {
                        var tmp : [Any] = []
                        for k in self.layoutInfos! {
                            tmp.append(k.toMap())
                        }
                        map["LayoutInfos"] = tmp
                    }
                    if self.styles != nil {
                        var tmp : [Any] = []
                        for k in self.styles! {
                            tmp.append(k.toMap())
                        }
                        map["Styles"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DocInfo") && dict["DocInfo"] != nil {
                        var model = RecognizeAllTextResponseBody.Data.SubImages.NewStyleData.DocInfo()
                        model.fromMap(dict["DocInfo"] as! [String: Any])
                        self.docInfo = model
                    }
                    if dict.keys.contains("LayoutInfos") && dict["LayoutInfos"] != nil {
                        var tmp : [RecognizeAllTextResponseBody.Data.SubImages.NewStyleData.LayoutInfos] = []
                        for v in dict["LayoutInfos"] as! [Any] {
                            var model = RecognizeAllTextResponseBody.Data.SubImages.NewStyleData.LayoutInfos()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.layoutInfos = tmp
                    }
                    if dict.keys.contains("Styles") && dict["Styles"] != nil {
                        var tmp : [RecognizeAllTextResponseBody.Data.SubImages.NewStyleData.Styles] = []
                        for v in dict["Styles"] as! [Any] {
                            var model = RecognizeAllTextResponseBody.Data.SubImages.NewStyleData.Styles()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.styles = tmp
                    }
                }
            }
            public class PageInfos : Tea.TeaModel {
                public class SubjectInfos : Tea.TeaModel {
                    public class BlockInfo : Tea.TeaModel {
                        public class BlockDetails : Tea.TeaModel {
                            public class BlockPoints : Tea.TeaModel {
                                public var x: Int32?

                                public var y: Int32?

                                public override init() {
                                    super.init()
                                }

                                public init(_ dict: [String: Any]) {
                                    super.init()
                                    self.fromMap(dict)
                                }

                                public override func validate() throws -> Void {
                                }

                                public override func toMap() -> [String : Any] {
                                    var map = super.toMap()
                                    if self.x != nil {
                                        map["X"] = self.x!
                                    }
                                    if self.y != nil {
                                        map["Y"] = self.y!
                                    }
                                    return map
                                }

                                public override func fromMap(_ dict: [String: Any]) -> Void {
                                    if dict.keys.contains("X") && dict["X"] != nil {
                                        self.x = dict["X"] as! Int32
                                    }
                                    if dict.keys.contains("Y") && dict["Y"] != nil {
                                        self.y = dict["Y"] as! Int32
                                    }
                                }
                            }
                            public class BlockRect : Tea.TeaModel {
                                public var centerX: Int32?

                                public var centerY: Int32?

                                public var height: Int32?

                                public var width: Int32?

                                public override init() {
                                    super.init()
                                }

                                public init(_ dict: [String: Any]) {
                                    super.init()
                                    self.fromMap(dict)
                                }

                                public override func validate() throws -> Void {
                                }

                                public override func toMap() -> [String : Any] {
                                    var map = super.toMap()
                                    if self.centerX != nil {
                                        map["CenterX"] = self.centerX!
                                    }
                                    if self.centerY != nil {
                                        map["CenterY"] = self.centerY!
                                    }
                                    if self.height != nil {
                                        map["Height"] = self.height!
                                    }
                                    if self.width != nil {
                                        map["Width"] = self.width!
                                    }
                                    return map
                                }

                                public override func fromMap(_ dict: [String: Any]) -> Void {
                                    if dict.keys.contains("CenterX") && dict["CenterX"] != nil {
                                        self.centerX = dict["CenterX"] as! Int32
                                    }
                                    if dict.keys.contains("CenterY") && dict["CenterY"] != nil {
                                        self.centerY = dict["CenterY"] as! Int32
                                    }
                                    if dict.keys.contains("Height") && dict["Height"] != nil {
                                        self.height = dict["Height"] as! Int32
                                    }
                                    if dict.keys.contains("Width") && dict["Width"] != nil {
                                        self.width = dict["Width"] as! Int32
                                    }
                                }
                            }
                            public class CharInfo : Tea.TeaModel {
                                public class CharPoints : Tea.TeaModel {
                                    public var x: Int32?

                                    public var y: Int32?

                                    public override init() {
                                        super.init()
                                    }

                                    public init(_ dict: [String: Any]) {
                                        super.init()
                                        self.fromMap(dict)
                                    }

                                    public override func validate() throws -> Void {
                                    }

                                    public override func toMap() -> [String : Any] {
                                        var map = super.toMap()
                                        if self.x != nil {
                                            map["X"] = self.x!
                                        }
                                        if self.y != nil {
                                            map["Y"] = self.y!
                                        }
                                        return map
                                    }

                                    public override func fromMap(_ dict: [String: Any]) -> Void {
                                        if dict.keys.contains("X") && dict["X"] != nil {
                                            self.x = dict["X"] as! Int32
                                        }
                                        if dict.keys.contains("Y") && dict["Y"] != nil {
                                            self.y = dict["Y"] as! Int32
                                        }
                                    }
                                }
                                public class CharRect : Tea.TeaModel {
                                    public var centerX: Int32?

                                    public var centerY: Int32?

                                    public var height: Int32?

                                    public var width: Int32?

                                    public override init() {
                                        super.init()
                                    }

                                    public init(_ dict: [String: Any]) {
                                        super.init()
                                        self.fromMap(dict)
                                    }

                                    public override func validate() throws -> Void {
                                    }

                                    public override func toMap() -> [String : Any] {
                                        var map = super.toMap()
                                        if self.centerX != nil {
                                            map["CenterX"] = self.centerX!
                                        }
                                        if self.centerY != nil {
                                            map["CenterY"] = self.centerY!
                                        }
                                        if self.height != nil {
                                            map["Height"] = self.height!
                                        }
                                        if self.width != nil {
                                            map["Width"] = self.width!
                                        }
                                        return map
                                    }

                                    public override func fromMap(_ dict: [String: Any]) -> Void {
                                        if dict.keys.contains("CenterX") && dict["CenterX"] != nil {
                                            self.centerX = dict["CenterX"] as! Int32
                                        }
                                        if dict.keys.contains("CenterY") && dict["CenterY"] != nil {
                                            self.centerY = dict["CenterY"] as! Int32
                                        }
                                        if dict.keys.contains("Height") && dict["Height"] != nil {
                                            self.height = dict["Height"] as! Int32
                                        }
                                        if dict.keys.contains("Width") && dict["Width"] != nil {
                                            self.width = dict["Width"] as! Int32
                                        }
                                    }
                                }
                                public var charId: Int32?

                                public var charPoints: [RecognizeAllTextResponseBody.Data.SubImages.PageInfos.SubjectInfos.BlockInfo.BlockDetails.CharInfo.CharPoints]?

                                public var charRect: RecognizeAllTextResponseBody.Data.SubImages.PageInfos.SubjectInfos.BlockInfo.BlockDetails.CharInfo.CharRect?

                                public var confidence: Int32?

                                public var content: String?

                                public override init() {
                                    super.init()
                                }

                                public init(_ dict: [String: Any]) {
                                    super.init()
                                    self.fromMap(dict)
                                }

                                public override func validate() throws -> Void {
                                    try self.charRect?.validate()
                                }

                                public override func toMap() -> [String : Any] {
                                    var map = super.toMap()
                                    if self.charId != nil {
                                        map["CharId"] = self.charId!
                                    }
                                    if self.charPoints != nil {
                                        var tmp : [Any] = []
                                        for k in self.charPoints! {
                                            tmp.append(k.toMap())
                                        }
                                        map["CharPoints"] = tmp
                                    }
                                    if self.charRect != nil {
                                        map["CharRect"] = self.charRect?.toMap()
                                    }
                                    if self.confidence != nil {
                                        map["Confidence"] = self.confidence!
                                    }
                                    if self.content != nil {
                                        map["Content"] = self.content!
                                    }
                                    return map
                                }

                                public override func fromMap(_ dict: [String: Any]) -> Void {
                                    if dict.keys.contains("CharId") && dict["CharId"] != nil {
                                        self.charId = dict["CharId"] as! Int32
                                    }
                                    if dict.keys.contains("CharPoints") && dict["CharPoints"] != nil {
                                        var tmp : [RecognizeAllTextResponseBody.Data.SubImages.PageInfos.SubjectInfos.BlockInfo.BlockDetails.CharInfo.CharPoints] = []
                                        for v in dict["CharPoints"] as! [Any] {
                                            var model = RecognizeAllTextResponseBody.Data.SubImages.PageInfos.SubjectInfos.BlockInfo.BlockDetails.CharInfo.CharPoints()
                                            if v != nil {
                                                model.fromMap(v as! [String: Any])
                                            }
                                            tmp.append(model)
                                        }
                                        self.charPoints = tmp
                                    }
                                    if dict.keys.contains("CharRect") && dict["CharRect"] != nil {
                                        var model = RecognizeAllTextResponseBody.Data.SubImages.PageInfos.SubjectInfos.BlockInfo.BlockDetails.CharInfo.CharRect()
                                        model.fromMap(dict["CharRect"] as! [String: Any])
                                        self.charRect = model
                                    }
                                    if dict.keys.contains("Confidence") && dict["Confidence"] != nil {
                                        self.confidence = dict["Confidence"] as! Int32
                                    }
                                    if dict.keys.contains("Content") && dict["Content"] != nil {
                                        self.content = dict["Content"] as! String
                                    }
                                }
                            }
                            public var angle: Int32?

                            public var blockId: Int32?

                            public var blockPoints: [RecognizeAllTextResponseBody.Data.SubImages.PageInfos.SubjectInfos.BlockInfo.BlockDetails.BlockPoints]?

                            public var blockRect: RecognizeAllTextResponseBody.Data.SubImages.PageInfos.SubjectInfos.BlockInfo.BlockDetails.BlockRect?

                            public var charInfo: [RecognizeAllTextResponseBody.Data.SubImages.PageInfos.SubjectInfos.BlockInfo.BlockDetails.CharInfo]?

                            public var confidence: Int32?

                            public var content: String?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                                try self.blockRect?.validate()
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.angle != nil {
                                    map["Angle"] = self.angle!
                                }
                                if self.blockId != nil {
                                    map["BlockId"] = self.blockId!
                                }
                                if self.blockPoints != nil {
                                    var tmp : [Any] = []
                                    for k in self.blockPoints! {
                                        tmp.append(k.toMap())
                                    }
                                    map["BlockPoints"] = tmp
                                }
                                if self.blockRect != nil {
                                    map["BlockRect"] = self.blockRect?.toMap()
                                }
                                if self.charInfo != nil {
                                    var tmp : [Any] = []
                                    for k in self.charInfo! {
                                        tmp.append(k.toMap())
                                    }
                                    map["CharInfo"] = tmp
                                }
                                if self.confidence != nil {
                                    map["Confidence"] = self.confidence!
                                }
                                if self.content != nil {
                                    map["Content"] = self.content!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("Angle") && dict["Angle"] != nil {
                                    self.angle = dict["Angle"] as! Int32
                                }
                                if dict.keys.contains("BlockId") && dict["BlockId"] != nil {
                                    self.blockId = dict["BlockId"] as! Int32
                                }
                                if dict.keys.contains("BlockPoints") && dict["BlockPoints"] != nil {
                                    var tmp : [RecognizeAllTextResponseBody.Data.SubImages.PageInfos.SubjectInfos.BlockInfo.BlockDetails.BlockPoints] = []
                                    for v in dict["BlockPoints"] as! [Any] {
                                        var model = RecognizeAllTextResponseBody.Data.SubImages.PageInfos.SubjectInfos.BlockInfo.BlockDetails.BlockPoints()
                                        if v != nil {
                                            model.fromMap(v as! [String: Any])
                                        }
                                        tmp.append(model)
                                    }
                                    self.blockPoints = tmp
                                }
                                if dict.keys.contains("BlockRect") && dict["BlockRect"] != nil {
                                    var model = RecognizeAllTextResponseBody.Data.SubImages.PageInfos.SubjectInfos.BlockInfo.BlockDetails.BlockRect()
                                    model.fromMap(dict["BlockRect"] as! [String: Any])
                                    self.blockRect = model
                                }
                                if dict.keys.contains("CharInfo") && dict["CharInfo"] != nil {
                                    var tmp : [RecognizeAllTextResponseBody.Data.SubImages.PageInfos.SubjectInfos.BlockInfo.BlockDetails.CharInfo] = []
                                    for v in dict["CharInfo"] as! [Any] {
                                        var model = RecognizeAllTextResponseBody.Data.SubImages.PageInfos.SubjectInfos.BlockInfo.BlockDetails.CharInfo()
                                        if v != nil {
                                            model.fromMap(v as! [String: Any])
                                        }
                                        tmp.append(model)
                                    }
                                    self.charInfo = tmp
                                }
                                if dict.keys.contains("Confidence") && dict["Confidence"] != nil {
                                    self.confidence = dict["Confidence"] as! Int32
                                }
                                if dict.keys.contains("Content") && dict["Content"] != nil {
                                    self.content = dict["Content"] as! String
                                }
                            }
                        }
                        public var blockCount: Int32?

                        public var blockDetails: [RecognizeAllTextResponseBody.Data.SubImages.PageInfos.SubjectInfos.BlockInfo.BlockDetails]?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.blockCount != nil {
                                map["BlockCount"] = self.blockCount!
                            }
                            if self.blockDetails != nil {
                                var tmp : [Any] = []
                                for k in self.blockDetails! {
                                    tmp.append(k.toMap())
                                }
                                map["BlockDetails"] = tmp
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("BlockCount") && dict["BlockCount"] != nil {
                                self.blockCount = dict["BlockCount"] as! Int32
                            }
                            if dict.keys.contains("BlockDetails") && dict["BlockDetails"] != nil {
                                var tmp : [RecognizeAllTextResponseBody.Data.SubImages.PageInfos.SubjectInfos.BlockInfo.BlockDetails] = []
                                for v in dict["BlockDetails"] as! [Any] {
                                    var model = RecognizeAllTextResponseBody.Data.SubImages.PageInfos.SubjectInfos.BlockInfo.BlockDetails()
                                    if v != nil {
                                        model.fromMap(v as! [String: Any])
                                    }
                                    tmp.append(model)
                                }
                                self.blockDetails = tmp
                            }
                        }
                    }
                    public class ContentInfos : Tea.TeaModel {
                        public class ContentPoints : Tea.TeaModel {
                            public var x: Int32?

                            public var y: Int32?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.x != nil {
                                    map["X"] = self.x!
                                }
                                if self.y != nil {
                                    map["Y"] = self.y!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("X") && dict["X"] != nil {
                                    self.x = dict["X"] as! Int32
                                }
                                if dict.keys.contains("Y") && dict["Y"] != nil {
                                    self.y = dict["Y"] as! Int32
                                }
                            }
                        }
                        public class ContentRect : Tea.TeaModel {
                            public var centerX: Int32?

                            public var centerY: Int32?

                            public var height: Int32?

                            public var width: Int32?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.centerX != nil {
                                    map["CenterX"] = self.centerX!
                                }
                                if self.centerY != nil {
                                    map["CenterY"] = self.centerY!
                                }
                                if self.height != nil {
                                    map["Height"] = self.height!
                                }
                                if self.width != nil {
                                    map["Width"] = self.width!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("CenterX") && dict["CenterX"] != nil {
                                    self.centerX = dict["CenterX"] as! Int32
                                }
                                if dict.keys.contains("CenterY") && dict["CenterY"] != nil {
                                    self.centerY = dict["CenterY"] as! Int32
                                }
                                if dict.keys.contains("Height") && dict["Height"] != nil {
                                    self.height = dict["Height"] as! Int32
                                }
                                if dict.keys.contains("Width") && dict["Width"] != nil {
                                    self.width = dict["Width"] as! Int32
                                }
                            }
                        }
                        public var contentPoints: [RecognizeAllTextResponseBody.Data.SubImages.PageInfos.SubjectInfos.ContentInfos.ContentPoints]?

                        public var contentRect: RecognizeAllTextResponseBody.Data.SubImages.PageInfos.SubjectInfos.ContentInfos.ContentRect?

                        public var docIndex: Int32?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                            try self.contentRect?.validate()
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.contentPoints != nil {
                                var tmp : [Any] = []
                                for k in self.contentPoints! {
                                    tmp.append(k.toMap())
                                }
                                map["ContentPoints"] = tmp
                            }
                            if self.contentRect != nil {
                                map["ContentRect"] = self.contentRect?.toMap()
                            }
                            if self.docIndex != nil {
                                map["DocIndex"] = self.docIndex!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("ContentPoints") && dict["ContentPoints"] != nil {
                                var tmp : [RecognizeAllTextResponseBody.Data.SubImages.PageInfos.SubjectInfos.ContentInfos.ContentPoints] = []
                                for v in dict["ContentPoints"] as! [Any] {
                                    var model = RecognizeAllTextResponseBody.Data.SubImages.PageInfos.SubjectInfos.ContentInfos.ContentPoints()
                                    if v != nil {
                                        model.fromMap(v as! [String: Any])
                                    }
                                    tmp.append(model)
                                }
                                self.contentPoints = tmp
                            }
                            if dict.keys.contains("ContentRect") && dict["ContentRect"] != nil {
                                var model = RecognizeAllTextResponseBody.Data.SubImages.PageInfos.SubjectInfos.ContentInfos.ContentRect()
                                model.fromMap(dict["ContentRect"] as! [String: Any])
                                self.contentRect = model
                            }
                            if dict.keys.contains("DocIndex") && dict["DocIndex"] != nil {
                                self.docIndex = dict["DocIndex"] as! Int32
                            }
                        }
                    }
                    public var blockInfo: RecognizeAllTextResponseBody.Data.SubImages.PageInfos.SubjectInfos.BlockInfo?

                    public var content: String?

                    public var contentInfos: [RecognizeAllTextResponseBody.Data.SubImages.PageInfos.SubjectInfos.ContentInfos]?

                    public var ids: [Int32]?

                    public var isMultiPage: Bool?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.blockInfo?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.blockInfo != nil {
                            map["BlockInfo"] = self.blockInfo?.toMap()
                        }
                        if self.content != nil {
                            map["Content"] = self.content!
                        }
                        if self.contentInfos != nil {
                            var tmp : [Any] = []
                            for k in self.contentInfos! {
                                tmp.append(k.toMap())
                            }
                            map["ContentInfos"] = tmp
                        }
                        if self.ids != nil {
                            map["Ids"] = self.ids!
                        }
                        if self.isMultiPage != nil {
                            map["IsMultiPage"] = self.isMultiPage!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("BlockInfo") && dict["BlockInfo"] != nil {
                            var model = RecognizeAllTextResponseBody.Data.SubImages.PageInfos.SubjectInfos.BlockInfo()
                            model.fromMap(dict["BlockInfo"] as! [String: Any])
                            self.blockInfo = model
                        }
                        if dict.keys.contains("Content") && dict["Content"] != nil {
                            self.content = dict["Content"] as! String
                        }
                        if dict.keys.contains("ContentInfos") && dict["ContentInfos"] != nil {
                            var tmp : [RecognizeAllTextResponseBody.Data.SubImages.PageInfos.SubjectInfos.ContentInfos] = []
                            for v in dict["ContentInfos"] as! [Any] {
                                var model = RecognizeAllTextResponseBody.Data.SubImages.PageInfos.SubjectInfos.ContentInfos()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.contentInfos = tmp
                        }
                        if dict.keys.contains("Ids") && dict["Ids"] != nil {
                            self.ids = dict["Ids"] as! [Int32]
                        }
                        if dict.keys.contains("IsMultiPage") && dict["IsMultiPage"] != nil {
                            self.isMultiPage = dict["IsMultiPage"] as! Bool
                        }
                    }
                }
                public var angle: Int32?

                public var docIndex: Int32?

                public var height: Int32?

                public var pageId: Int32?

                public var subjectInfos: [RecognizeAllTextResponseBody.Data.SubImages.PageInfos.SubjectInfos]?

                public var width: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.angle != nil {
                        map["Angle"] = self.angle!
                    }
                    if self.docIndex != nil {
                        map["DocIndex"] = self.docIndex!
                    }
                    if self.height != nil {
                        map["Height"] = self.height!
                    }
                    if self.pageId != nil {
                        map["PageId"] = self.pageId!
                    }
                    if self.subjectInfos != nil {
                        var tmp : [Any] = []
                        for k in self.subjectInfos! {
                            tmp.append(k.toMap())
                        }
                        map["SubjectInfos"] = tmp
                    }
                    if self.width != nil {
                        map["Width"] = self.width!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Angle") && dict["Angle"] != nil {
                        self.angle = dict["Angle"] as! Int32
                    }
                    if dict.keys.contains("DocIndex") && dict["DocIndex"] != nil {
                        self.docIndex = dict["DocIndex"] as! Int32
                    }
                    if dict.keys.contains("Height") && dict["Height"] != nil {
                        self.height = dict["Height"] as! Int32
                    }
                    if dict.keys.contains("PageId") && dict["PageId"] != nil {
                        self.pageId = dict["PageId"] as! Int32
                    }
                    if dict.keys.contains("SubjectInfos") && dict["SubjectInfos"] != nil {
                        var tmp : [RecognizeAllTextResponseBody.Data.SubImages.PageInfos.SubjectInfos] = []
                        for v in dict["SubjectInfos"] as! [Any] {
                            var model = RecognizeAllTextResponseBody.Data.SubImages.PageInfos.SubjectInfos()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.subjectInfos = tmp
                    }
                    if dict.keys.contains("Width") && dict["Width"] != nil {
                        self.width = dict["Width"] as! Int32
                    }
                }
            }
            public class ParagraphInfo : Tea.TeaModel {
                public class ParagraphDetails : Tea.TeaModel {
                    public var blockList: [Int32]?

                    public var paragraphContent: String?

                    public var paragraphId: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.blockList != nil {
                            map["BlockList"] = self.blockList!
                        }
                        if self.paragraphContent != nil {
                            map["ParagraphContent"] = self.paragraphContent!
                        }
                        if self.paragraphId != nil {
                            map["ParagraphId"] = self.paragraphId!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("BlockList") && dict["BlockList"] != nil {
                            self.blockList = dict["BlockList"] as! [Int32]
                        }
                        if dict.keys.contains("ParagraphContent") && dict["ParagraphContent"] != nil {
                            self.paragraphContent = dict["ParagraphContent"] as! String
                        }
                        if dict.keys.contains("ParagraphId") && dict["ParagraphId"] != nil {
                            self.paragraphId = dict["ParagraphId"] as! Int32
                        }
                    }
                }
                public var paragraphCount: Int32?

                public var paragraphDetails: [RecognizeAllTextResponseBody.Data.SubImages.ParagraphInfo.ParagraphDetails]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.paragraphCount != nil {
                        map["ParagraphCount"] = self.paragraphCount!
                    }
                    if self.paragraphDetails != nil {
                        var tmp : [Any] = []
                        for k in self.paragraphDetails! {
                            tmp.append(k.toMap())
                        }
                        map["ParagraphDetails"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ParagraphCount") && dict["ParagraphCount"] != nil {
                        self.paragraphCount = dict["ParagraphCount"] as! Int32
                    }
                    if dict.keys.contains("ParagraphDetails") && dict["ParagraphDetails"] != nil {
                        var tmp : [RecognizeAllTextResponseBody.Data.SubImages.ParagraphInfo.ParagraphDetails] = []
                        for v in dict["ParagraphDetails"] as! [Any] {
                            var model = RecognizeAllTextResponseBody.Data.SubImages.ParagraphInfo.ParagraphDetails()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.paragraphDetails = tmp
                    }
                }
            }
            public class PartInfos : Tea.TeaModel {
                public class PartInfoPointsList : Tea.TeaModel {
                    public var x: Int32?

                    public var y: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.x != nil {
                            map["X"] = self.x!
                        }
                        if self.y != nil {
                            map["Y"] = self.y!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("X") && dict["X"] != nil {
                            self.x = dict["X"] as! Int32
                        }
                        if dict.keys.contains("Y") && dict["Y"] != nil {
                            self.y = dict["Y"] as! Int32
                        }
                    }
                }
                public class PartInfoRectList : Tea.TeaModel {
                    public var centerX: Int32?

                    public var centerY: Int32?

                    public var height: Int32?

                    public var width: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.centerX != nil {
                            map["CenterX"] = self.centerX!
                        }
                        if self.centerY != nil {
                            map["CenterY"] = self.centerY!
                        }
                        if self.height != nil {
                            map["Height"] = self.height!
                        }
                        if self.width != nil {
                            map["Width"] = self.width!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("CenterX") && dict["CenterX"] != nil {
                            self.centerX = dict["CenterX"] as! Int32
                        }
                        if dict.keys.contains("CenterY") && dict["CenterY"] != nil {
                            self.centerY = dict["CenterY"] as! Int32
                        }
                        if dict.keys.contains("Height") && dict["Height"] != nil {
                            self.height = dict["Height"] as! Int32
                        }
                        if dict.keys.contains("Width") && dict["Width"] != nil {
                            self.width = dict["Width"] as! Int32
                        }
                    }
                }
                public class SubjectList : Tea.TeaModel {
                    public class AnswerPointsList : Tea.TeaModel {
                        public var x: Int32?

                        public var y: Int32?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.x != nil {
                                map["X"] = self.x!
                            }
                            if self.y != nil {
                                map["Y"] = self.y!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("X") && dict["X"] != nil {
                                self.x = dict["X"] as! Int32
                            }
                            if dict.keys.contains("Y") && dict["Y"] != nil {
                                self.y = dict["Y"] as! Int32
                            }
                        }
                    }
                    public class AnswerRectList : Tea.TeaModel {
                        public var centerX: Int32?

                        public var centerY: Int32?

                        public var height: Int32?

                        public var width: Int32?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.centerX != nil {
                                map["CenterX"] = self.centerX!
                            }
                            if self.centerY != nil {
                                map["CenterY"] = self.centerY!
                            }
                            if self.height != nil {
                                map["Height"] = self.height!
                            }
                            if self.width != nil {
                                map["Width"] = self.width!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("CenterX") && dict["CenterX"] != nil {
                                self.centerX = dict["CenterX"] as! Int32
                            }
                            if dict.keys.contains("CenterY") && dict["CenterY"] != nil {
                                self.centerY = dict["CenterY"] as! Int32
                            }
                            if dict.keys.contains("Height") && dict["Height"] != nil {
                                self.height = dict["Height"] as! Int32
                            }
                            if dict.keys.contains("Width") && dict["Width"] != nil {
                                self.width = dict["Width"] as! Int32
                            }
                        }
                    }
                    public class Elements : Tea.TeaModel {
                        public class Contents : Tea.TeaModel {
                            public class ContentPoints : Tea.TeaModel {
                                public var x: Int32?

                                public var y: Int32?

                                public override init() {
                                    super.init()
                                }

                                public init(_ dict: [String: Any]) {
                                    super.init()
                                    self.fromMap(dict)
                                }

                                public override func validate() throws -> Void {
                                }

                                public override func toMap() -> [String : Any] {
                                    var map = super.toMap()
                                    if self.x != nil {
                                        map["X"] = self.x!
                                    }
                                    if self.y != nil {
                                        map["Y"] = self.y!
                                    }
                                    return map
                                }

                                public override func fromMap(_ dict: [String: Any]) -> Void {
                                    if dict.keys.contains("X") && dict["X"] != nil {
                                        self.x = dict["X"] as! Int32
                                    }
                                    if dict.keys.contains("Y") && dict["Y"] != nil {
                                        self.y = dict["Y"] as! Int32
                                    }
                                }
                            }
                            public class ContentRect : Tea.TeaModel {
                                public var centerX: Int32?

                                public var centerY: Int32?

                                public var height: Int32?

                                public var width: Int32?

                                public override init() {
                                    super.init()
                                }

                                public init(_ dict: [String: Any]) {
                                    super.init()
                                    self.fromMap(dict)
                                }

                                public override func validate() throws -> Void {
                                }

                                public override func toMap() -> [String : Any] {
                                    var map = super.toMap()
                                    if self.centerX != nil {
                                        map["CenterX"] = self.centerX!
                                    }
                                    if self.centerY != nil {
                                        map["CenterY"] = self.centerY!
                                    }
                                    if self.height != nil {
                                        map["Height"] = self.height!
                                    }
                                    if self.width != nil {
                                        map["Width"] = self.width!
                                    }
                                    return map
                                }

                                public override func fromMap(_ dict: [String: Any]) -> Void {
                                    if dict.keys.contains("CenterX") && dict["CenterX"] != nil {
                                        self.centerX = dict["CenterX"] as! Int32
                                    }
                                    if dict.keys.contains("CenterY") && dict["CenterY"] != nil {
                                        self.centerY = dict["CenterY"] as! Int32
                                    }
                                    if dict.keys.contains("Height") && dict["Height"] != nil {
                                        self.height = dict["Height"] as! Int32
                                    }
                                    if dict.keys.contains("Width") && dict["Width"] != nil {
                                        self.width = dict["Width"] as! Int32
                                    }
                                }
                            }
                            public var confidence: Int32?

                            public var contentPoints: [RecognizeAllTextResponseBody.Data.SubImages.PartInfos.SubjectList.Elements.Contents.ContentPoints]?

                            public var contentRect: RecognizeAllTextResponseBody.Data.SubImages.PartInfos.SubjectList.Elements.Contents.ContentRect?

                            public var contentType: Int32?

                            public var option: String?

                            public var text: String?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                                try self.contentRect?.validate()
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.confidence != nil {
                                    map["Confidence"] = self.confidence!
                                }
                                if self.contentPoints != nil {
                                    var tmp : [Any] = []
                                    for k in self.contentPoints! {
                                        tmp.append(k.toMap())
                                    }
                                    map["ContentPoints"] = tmp
                                }
                                if self.contentRect != nil {
                                    map["ContentRect"] = self.contentRect?.toMap()
                                }
                                if self.contentType != nil {
                                    map["ContentType"] = self.contentType!
                                }
                                if self.option != nil {
                                    map["Option"] = self.option!
                                }
                                if self.text != nil {
                                    map["Text"] = self.text!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("Confidence") && dict["Confidence"] != nil {
                                    self.confidence = dict["Confidence"] as! Int32
                                }
                                if dict.keys.contains("ContentPoints") && dict["ContentPoints"] != nil {
                                    var tmp : [RecognizeAllTextResponseBody.Data.SubImages.PartInfos.SubjectList.Elements.Contents.ContentPoints] = []
                                    for v in dict["ContentPoints"] as! [Any] {
                                        var model = RecognizeAllTextResponseBody.Data.SubImages.PartInfos.SubjectList.Elements.Contents.ContentPoints()
                                        if v != nil {
                                            model.fromMap(v as! [String: Any])
                                        }
                                        tmp.append(model)
                                    }
                                    self.contentPoints = tmp
                                }
                                if dict.keys.contains("ContentRect") && dict["ContentRect"] != nil {
                                    var model = RecognizeAllTextResponseBody.Data.SubImages.PartInfos.SubjectList.Elements.Contents.ContentRect()
                                    model.fromMap(dict["ContentRect"] as! [String: Any])
                                    self.contentRect = model
                                }
                                if dict.keys.contains("ContentType") && dict["ContentType"] != nil {
                                    self.contentType = dict["ContentType"] as! Int32
                                }
                                if dict.keys.contains("Option") && dict["Option"] != nil {
                                    self.option = dict["Option"] as! String
                                }
                                if dict.keys.contains("Text") && dict["Text"] != nil {
                                    self.text = dict["Text"] as! String
                                }
                            }
                        }
                        public class ElementPointsList : Tea.TeaModel {
                            public var x: Int32?

                            public var y: Int32?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.x != nil {
                                    map["X"] = self.x!
                                }
                                if self.y != nil {
                                    map["Y"] = self.y!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("X") && dict["X"] != nil {
                                    self.x = dict["X"] as! Int32
                                }
                                if dict.keys.contains("Y") && dict["Y"] != nil {
                                    self.y = dict["Y"] as! Int32
                                }
                            }
                        }
                        public class ElementRectList : Tea.TeaModel {
                            public var centerX: Int32?

                            public var centerY: Int32?

                            public var height: Int32?

                            public var width: Int32?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.centerX != nil {
                                    map["CenterX"] = self.centerX!
                                }
                                if self.centerY != nil {
                                    map["CenterY"] = self.centerY!
                                }
                                if self.height != nil {
                                    map["Height"] = self.height!
                                }
                                if self.width != nil {
                                    map["Width"] = self.width!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("CenterX") && dict["CenterX"] != nil {
                                    self.centerX = dict["CenterX"] as! Int32
                                }
                                if dict.keys.contains("CenterY") && dict["CenterY"] != nil {
                                    self.centerY = dict["CenterY"] as! Int32
                                }
                                if dict.keys.contains("Height") && dict["Height"] != nil {
                                    self.height = dict["Height"] as! Int32
                                }
                                if dict.keys.contains("Width") && dict["Width"] != nil {
                                    self.width = dict["Width"] as! Int32
                                }
                            }
                        }
                        public var contents: [RecognizeAllTextResponseBody.Data.SubImages.PartInfos.SubjectList.Elements.Contents]?

                        public var elementPointsList: [[RecognizeAllTextResponseBody.Data.SubImages.PartInfos.SubjectList.Elements.ElementPointsList]]?

                        public var elementRectList: [RecognizeAllTextResponseBody.Data.SubImages.PartInfos.SubjectList.Elements.ElementRectList]?

                        public var elementType: Int32?

                        public var text: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.contents != nil {
                                var tmp : [Any] = []
                                for k in self.contents! {
                                    tmp.append(k.toMap())
                                }
                                map["Contents"] = tmp
                            }
                            if self.elementPointsList != nil {
                                var tmp : [Any] = []
                                for k in self.elementPointsList! {
                                    var l1 : [Any] = []
                                    for k1 in k {
                                        l1.append(k1.toMap())
                                    }
                                    tmp.append(l1)
                                }
                                map["ElementPointsList"] = tmp
                            }
                            if self.elementRectList != nil {
                                var tmp : [Any] = []
                                for k in self.elementRectList! {
                                    tmp.append(k.toMap())
                                }
                                map["ElementRectList"] = tmp
                            }
                            if self.elementType != nil {
                                map["ElementType"] = self.elementType!
                            }
                            if self.text != nil {
                                map["Text"] = self.text!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Contents") && dict["Contents"] != nil {
                                var tmp : [RecognizeAllTextResponseBody.Data.SubImages.PartInfos.SubjectList.Elements.Contents] = []
                                for v in dict["Contents"] as! [Any] {
                                    var model = RecognizeAllTextResponseBody.Data.SubImages.PartInfos.SubjectList.Elements.Contents()
                                    if v != nil {
                                        model.fromMap(v as! [String: Any])
                                    }
                                    tmp.append(model)
                                }
                                self.contents = tmp
                            }
                            if dict.keys.contains("ElementPointsList") && dict["ElementPointsList"] != nil {
                                var tmp : [[RecognizeAllTextResponseBody.Data.SubImages.PartInfos.SubjectList.Elements.ElementPointsList]] = []
                                for v in dict["ElementPointsList"] as! [Any] {
                                    var l1 : [RecognizeAllTextResponseBody.Data.SubImages.PartInfos.SubjectList.Elements.ElementPointsList] = []
                                    for v1 in v as! [Any] {
                                        var model = RecognizeAllTextResponseBody.Data.SubImages.PartInfos.SubjectList.Elements.ElementPointsList()
                                        if v1 != nil {
                                            model.fromMap(v1 as! [String: Any])
                                        }
                                        l1.append(model)
                                    }
                                    tmp.append(l1)
                                }
                                self.elementPointsList = tmp
                            }
                            if dict.keys.contains("ElementRectList") && dict["ElementRectList"] != nil {
                                var tmp : [RecognizeAllTextResponseBody.Data.SubImages.PartInfos.SubjectList.Elements.ElementRectList] = []
                                for v in dict["ElementRectList"] as! [Any] {
                                    var model = RecognizeAllTextResponseBody.Data.SubImages.PartInfos.SubjectList.Elements.ElementRectList()
                                    if v != nil {
                                        model.fromMap(v as! [String: Any])
                                    }
                                    tmp.append(model)
                                }
                                self.elementRectList = tmp
                            }
                            if dict.keys.contains("ElementType") && dict["ElementType"] != nil {
                                self.elementType = dict["ElementType"] as! Int32
                            }
                            if dict.keys.contains("Text") && dict["Text"] != nil {
                                self.text = dict["Text"] as! String
                            }
                        }
                    }
                    public class FigurePointsList : Tea.TeaModel {
                        public var x: Int32?

                        public var y: Int32?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.x != nil {
                                map["X"] = self.x!
                            }
                            if self.y != nil {
                                map["Y"] = self.y!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("X") && dict["X"] != nil {
                                self.x = dict["X"] as! Int32
                            }
                            if dict.keys.contains("Y") && dict["Y"] != nil {
                                self.y = dict["Y"] as! Int32
                            }
                        }
                    }
                    public class FigureRectList : Tea.TeaModel {
                        public var centerX: Int32?

                        public var centerY: Int32?

                        public var height: Int32?

                        public var width: Int32?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.centerX != nil {
                                map["CenterX"] = self.centerX!
                            }
                            if self.centerY != nil {
                                map["CenterY"] = self.centerY!
                            }
                            if self.height != nil {
                                map["Height"] = self.height!
                            }
                            if self.width != nil {
                                map["Width"] = self.width!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("CenterX") && dict["CenterX"] != nil {
                                self.centerX = dict["CenterX"] as! Int32
                            }
                            if dict.keys.contains("CenterY") && dict["CenterY"] != nil {
                                self.centerY = dict["CenterY"] as! Int32
                            }
                            if dict.keys.contains("Height") && dict["Height"] != nil {
                                self.height = dict["Height"] as! Int32
                            }
                            if dict.keys.contains("Width") && dict["Width"] != nil {
                                self.width = dict["Width"] as! Int32
                            }
                        }
                    }
                    public class SubjectPointsList : Tea.TeaModel {
                        public var x: Int32?

                        public var y: Int32?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.x != nil {
                                map["X"] = self.x!
                            }
                            if self.y != nil {
                                map["Y"] = self.y!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("X") && dict["X"] != nil {
                                self.x = dict["X"] as! Int32
                            }
                            if dict.keys.contains("Y") && dict["Y"] != nil {
                                self.y = dict["Y"] as! Int32
                            }
                        }
                    }
                    public class SubjectRectList : Tea.TeaModel {
                        public var centerX: String?

                        public var centerY: String?

                        public var height: String?

                        public var width: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.centerX != nil {
                                map["CenterX"] = self.centerX!
                            }
                            if self.centerY != nil {
                                map["CenterY"] = self.centerY!
                            }
                            if self.height != nil {
                                map["Height"] = self.height!
                            }
                            if self.width != nil {
                                map["Width"] = self.width!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("CenterX") && dict["CenterX"] != nil {
                                self.centerX = dict["CenterX"] as! String
                            }
                            if dict.keys.contains("CenterY") && dict["CenterY"] != nil {
                                self.centerY = dict["CenterY"] as! String
                            }
                            if dict.keys.contains("Height") && dict["Height"] != nil {
                                self.height = dict["Height"] as! String
                            }
                            if dict.keys.contains("Width") && dict["Width"] != nil {
                                self.width = dict["Width"] as! String
                            }
                        }
                    }
                    public class TablePointsList : Tea.TeaModel {
                        public var x: Int32?

                        public var y: Int32?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.x != nil {
                                map["X"] = self.x!
                            }
                            if self.y != nil {
                                map["Y"] = self.y!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("X") && dict["X"] != nil {
                                self.x = dict["X"] as! Int32
                            }
                            if dict.keys.contains("Y") && dict["Y"] != nil {
                                self.y = dict["Y"] as! Int32
                            }
                        }
                    }
                    public class TableRectList : Tea.TeaModel {
                        public var centerX: Int32?

                        public var centerY: Int32?

                        public var height: Int32?

                        public var width: Int32?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.centerX != nil {
                                map["CenterX"] = self.centerX!
                            }
                            if self.centerY != nil {
                                map["CenterY"] = self.centerY!
                            }
                            if self.height != nil {
                                map["Height"] = self.height!
                            }
                            if self.width != nil {
                                map["Width"] = self.width!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("CenterX") && dict["CenterX"] != nil {
                                self.centerX = dict["CenterX"] as! Int32
                            }
                            if dict.keys.contains("CenterY") && dict["CenterY"] != nil {
                                self.centerY = dict["CenterY"] as! Int32
                            }
                            if dict.keys.contains("Height") && dict["Height"] != nil {
                                self.height = dict["Height"] as! Int32
                            }
                            if dict.keys.contains("Width") && dict["Width"] != nil {
                                self.width = dict["Width"] as! Int32
                            }
                        }
                    }
                    public var answerPointsList: [[RecognizeAllTextResponseBody.Data.SubImages.PartInfos.SubjectList.AnswerPointsList]]?

                    public var answerRectList: [RecognizeAllTextResponseBody.Data.SubImages.PartInfos.SubjectList.AnswerRectList]?

                    public var confidence: Int32?

                    public var elements: [RecognizeAllTextResponseBody.Data.SubImages.PartInfos.SubjectList.Elements]?

                    public var figurePointsList: [[RecognizeAllTextResponseBody.Data.SubImages.PartInfos.SubjectList.FigurePointsList]]?

                    public var figureRectList: [RecognizeAllTextResponseBody.Data.SubImages.PartInfos.SubjectList.FigureRectList]?

                    public var index: Int32?

                    public var numChoices: Int32?

                    public var subjectPointsList: [[RecognizeAllTextResponseBody.Data.SubImages.PartInfos.SubjectList.SubjectPointsList]]?

                    public var subjectRectList: [RecognizeAllTextResponseBody.Data.SubImages.PartInfos.SubjectList.SubjectRectList]?

                    public var subjectType: Int32?

                    public var tablePointsList: [[RecognizeAllTextResponseBody.Data.SubImages.PartInfos.SubjectList.TablePointsList]]?

                    public var tableRectList: [RecognizeAllTextResponseBody.Data.SubImages.PartInfos.SubjectList.TableRectList]?

                    public var text: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.answerPointsList != nil {
                            var tmp : [Any] = []
                            for k in self.answerPointsList! {
                                var l1 : [Any] = []
                                for k1 in k {
                                    l1.append(k1.toMap())
                                }
                                tmp.append(l1)
                            }
                            map["AnswerPointsList"] = tmp
                        }
                        if self.answerRectList != nil {
                            var tmp : [Any] = []
                            for k in self.answerRectList! {
                                tmp.append(k.toMap())
                            }
                            map["AnswerRectList"] = tmp
                        }
                        if self.confidence != nil {
                            map["Confidence"] = self.confidence!
                        }
                        if self.elements != nil {
                            var tmp : [Any] = []
                            for k in self.elements! {
                                tmp.append(k.toMap())
                            }
                            map["Elements"] = tmp
                        }
                        if self.figurePointsList != nil {
                            var tmp : [Any] = []
                            for k in self.figurePointsList! {
                                var l1 : [Any] = []
                                for k1 in k {
                                    l1.append(k1.toMap())
                                }
                                tmp.append(l1)
                            }
                            map["FigurePointsList"] = tmp
                        }
                        if self.figureRectList != nil {
                            var tmp : [Any] = []
                            for k in self.figureRectList! {
                                tmp.append(k.toMap())
                            }
                            map["FigureRectList"] = tmp
                        }
                        if self.index != nil {
                            map["Index"] = self.index!
                        }
                        if self.numChoices != nil {
                            map["NumChoices"] = self.numChoices!
                        }
                        if self.subjectPointsList != nil {
                            var tmp : [Any] = []
                            for k in self.subjectPointsList! {
                                var l1 : [Any] = []
                                for k1 in k {
                                    l1.append(k1.toMap())
                                }
                                tmp.append(l1)
                            }
                            map["SubjectPointsList"] = tmp
                        }
                        if self.subjectRectList != nil {
                            var tmp : [Any] = []
                            for k in self.subjectRectList! {
                                tmp.append(k.toMap())
                            }
                            map["SubjectRectList"] = tmp
                        }
                        if self.subjectType != nil {
                            map["SubjectType"] = self.subjectType!
                        }
                        if self.tablePointsList != nil {
                            var tmp : [Any] = []
                            for k in self.tablePointsList! {
                                var l1 : [Any] = []
                                for k1 in k {
                                    l1.append(k1.toMap())
                                }
                                tmp.append(l1)
                            }
                            map["TablePointsList"] = tmp
                        }
                        if self.tableRectList != nil {
                            var tmp : [Any] = []
                            for k in self.tableRectList! {
                                tmp.append(k.toMap())
                            }
                            map["TableRectList"] = tmp
                        }
                        if self.text != nil {
                            map["Text"] = self.text!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("AnswerPointsList") && dict["AnswerPointsList"] != nil {
                            var tmp : [[RecognizeAllTextResponseBody.Data.SubImages.PartInfos.SubjectList.AnswerPointsList]] = []
                            for v in dict["AnswerPointsList"] as! [Any] {
                                var l1 : [RecognizeAllTextResponseBody.Data.SubImages.PartInfos.SubjectList.AnswerPointsList] = []
                                for v1 in v as! [Any] {
                                    var model = RecognizeAllTextResponseBody.Data.SubImages.PartInfos.SubjectList.AnswerPointsList()
                                    if v1 != nil {
                                        model.fromMap(v1 as! [String: Any])
                                    }
                                    l1.append(model)
                                }
                                tmp.append(l1)
                            }
                            self.answerPointsList = tmp
                        }
                        if dict.keys.contains("AnswerRectList") && dict["AnswerRectList"] != nil {
                            var tmp : [RecognizeAllTextResponseBody.Data.SubImages.PartInfos.SubjectList.AnswerRectList] = []
                            for v in dict["AnswerRectList"] as! [Any] {
                                var model = RecognizeAllTextResponseBody.Data.SubImages.PartInfos.SubjectList.AnswerRectList()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.answerRectList = tmp
                        }
                        if dict.keys.contains("Confidence") && dict["Confidence"] != nil {
                            self.confidence = dict["Confidence"] as! Int32
                        }
                        if dict.keys.contains("Elements") && dict["Elements"] != nil {
                            var tmp : [RecognizeAllTextResponseBody.Data.SubImages.PartInfos.SubjectList.Elements] = []
                            for v in dict["Elements"] as! [Any] {
                                var model = RecognizeAllTextResponseBody.Data.SubImages.PartInfos.SubjectList.Elements()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.elements = tmp
                        }
                        if dict.keys.contains("FigurePointsList") && dict["FigurePointsList"] != nil {
                            var tmp : [[RecognizeAllTextResponseBody.Data.SubImages.PartInfos.SubjectList.FigurePointsList]] = []
                            for v in dict["FigurePointsList"] as! [Any] {
                                var l1 : [RecognizeAllTextResponseBody.Data.SubImages.PartInfos.SubjectList.FigurePointsList] = []
                                for v1 in v as! [Any] {
                                    var model = RecognizeAllTextResponseBody.Data.SubImages.PartInfos.SubjectList.FigurePointsList()
                                    if v1 != nil {
                                        model.fromMap(v1 as! [String: Any])
                                    }
                                    l1.append(model)
                                }
                                tmp.append(l1)
                            }
                            self.figurePointsList = tmp
                        }
                        if dict.keys.contains("FigureRectList") && dict["FigureRectList"] != nil {
                            var tmp : [RecognizeAllTextResponseBody.Data.SubImages.PartInfos.SubjectList.FigureRectList] = []
                            for v in dict["FigureRectList"] as! [Any] {
                                var model = RecognizeAllTextResponseBody.Data.SubImages.PartInfos.SubjectList.FigureRectList()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.figureRectList = tmp
                        }
                        if dict.keys.contains("Index") && dict["Index"] != nil {
                            self.index = dict["Index"] as! Int32
                        }
                        if dict.keys.contains("NumChoices") && dict["NumChoices"] != nil {
                            self.numChoices = dict["NumChoices"] as! Int32
                        }
                        if dict.keys.contains("SubjectPointsList") && dict["SubjectPointsList"] != nil {
                            var tmp : [[RecognizeAllTextResponseBody.Data.SubImages.PartInfos.SubjectList.SubjectPointsList]] = []
                            for v in dict["SubjectPointsList"] as! [Any] {
                                var l1 : [RecognizeAllTextResponseBody.Data.SubImages.PartInfos.SubjectList.SubjectPointsList] = []
                                for v1 in v as! [Any] {
                                    var model = RecognizeAllTextResponseBody.Data.SubImages.PartInfos.SubjectList.SubjectPointsList()
                                    if v1 != nil {
                                        model.fromMap(v1 as! [String: Any])
                                    }
                                    l1.append(model)
                                }
                                tmp.append(l1)
                            }
                            self.subjectPointsList = tmp
                        }
                        if dict.keys.contains("SubjectRectList") && dict["SubjectRectList"] != nil {
                            var tmp : [RecognizeAllTextResponseBody.Data.SubImages.PartInfos.SubjectList.SubjectRectList] = []
                            for v in dict["SubjectRectList"] as! [Any] {
                                var model = RecognizeAllTextResponseBody.Data.SubImages.PartInfos.SubjectList.SubjectRectList()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.subjectRectList = tmp
                        }
                        if dict.keys.contains("SubjectType") && dict["SubjectType"] != nil {
                            self.subjectType = dict["SubjectType"] as! Int32
                        }
                        if dict.keys.contains("TablePointsList") && dict["TablePointsList"] != nil {
                            var tmp : [[RecognizeAllTextResponseBody.Data.SubImages.PartInfos.SubjectList.TablePointsList]] = []
                            for v in dict["TablePointsList"] as! [Any] {
                                var l1 : [RecognizeAllTextResponseBody.Data.SubImages.PartInfos.SubjectList.TablePointsList] = []
                                for v1 in v as! [Any] {
                                    var model = RecognizeAllTextResponseBody.Data.SubImages.PartInfos.SubjectList.TablePointsList()
                                    if v1 != nil {
                                        model.fromMap(v1 as! [String: Any])
                                    }
                                    l1.append(model)
                                }
                                tmp.append(l1)
                            }
                            self.tablePointsList = tmp
                        }
                        if dict.keys.contains("TableRectList") && dict["TableRectList"] != nil {
                            var tmp : [RecognizeAllTextResponseBody.Data.SubImages.PartInfos.SubjectList.TableRectList] = []
                            for v in dict["TableRectList"] as! [Any] {
                                var model = RecognizeAllTextResponseBody.Data.SubImages.PartInfos.SubjectList.TableRectList()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.tableRectList = tmp
                        }
                        if dict.keys.contains("Text") && dict["Text"] != nil {
                            self.text = dict["Text"] as! String
                        }
                    }
                }
                public var partInfoPointsList: [[RecognizeAllTextResponseBody.Data.SubImages.PartInfos.PartInfoPointsList]]?

                public var partInfoRectList: [RecognizeAllTextResponseBody.Data.SubImages.PartInfos.PartInfoRectList]?

                public var partTitle: String?

                public var subjectList: [RecognizeAllTextResponseBody.Data.SubImages.PartInfos.SubjectList]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.partInfoPointsList != nil {
                        var tmp : [Any] = []
                        for k in self.partInfoPointsList! {
                            var l1 : [Any] = []
                            for k1 in k {
                                l1.append(k1.toMap())
                            }
                            tmp.append(l1)
                        }
                        map["PartInfoPointsList"] = tmp
                    }
                    if self.partInfoRectList != nil {
                        var tmp : [Any] = []
                        for k in self.partInfoRectList! {
                            tmp.append(k.toMap())
                        }
                        map["PartInfoRectList"] = tmp
                    }
                    if self.partTitle != nil {
                        map["PartTitle"] = self.partTitle!
                    }
                    if self.subjectList != nil {
                        var tmp : [Any] = []
                        for k in self.subjectList! {
                            tmp.append(k.toMap())
                        }
                        map["SubjectList"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("PartInfoPointsList") && dict["PartInfoPointsList"] != nil {
                        var tmp : [[RecognizeAllTextResponseBody.Data.SubImages.PartInfos.PartInfoPointsList]] = []
                        for v in dict["PartInfoPointsList"] as! [Any] {
                            var l1 : [RecognizeAllTextResponseBody.Data.SubImages.PartInfos.PartInfoPointsList] = []
                            for v1 in v as! [Any] {
                                var model = RecognizeAllTextResponseBody.Data.SubImages.PartInfos.PartInfoPointsList()
                                if v1 != nil {
                                    model.fromMap(v1 as! [String: Any])
                                }
                                l1.append(model)
                            }
                            tmp.append(l1)
                        }
                        self.partInfoPointsList = tmp
                    }
                    if dict.keys.contains("PartInfoRectList") && dict["PartInfoRectList"] != nil {
                        var tmp : [RecognizeAllTextResponseBody.Data.SubImages.PartInfos.PartInfoRectList] = []
                        for v in dict["PartInfoRectList"] as! [Any] {
                            var model = RecognizeAllTextResponseBody.Data.SubImages.PartInfos.PartInfoRectList()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.partInfoRectList = tmp
                    }
                    if dict.keys.contains("PartTitle") && dict["PartTitle"] != nil {
                        self.partTitle = dict["PartTitle"] as! String
                    }
                    if dict.keys.contains("SubjectList") && dict["SubjectList"] != nil {
                        var tmp : [RecognizeAllTextResponseBody.Data.SubImages.PartInfos.SubjectList] = []
                        for v in dict["SubjectList"] as! [Any] {
                            var model = RecognizeAllTextResponseBody.Data.SubImages.PartInfos.SubjectList()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.subjectList = tmp
                    }
                }
            }
            public class QrCodeInfo : Tea.TeaModel {
                public class QrCodeDetails : Tea.TeaModel {
                    public class QrCodePoints : Tea.TeaModel {
                        public var x: Int32?

                        public var y: Int32?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.x != nil {
                                map["X"] = self.x!
                            }
                            if self.y != nil {
                                map["Y"] = self.y!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("X") && dict["X"] != nil {
                                self.x = dict["X"] as! Int32
                            }
                            if dict.keys.contains("Y") && dict["Y"] != nil {
                                self.y = dict["Y"] as! Int32
                            }
                        }
                    }
                    public class QrCodeRect : Tea.TeaModel {
                        public var centerX: Int32?

                        public var centerY: Int32?

                        public var height: Int32?

                        public var width: Int32?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.centerX != nil {
                                map["CenterX"] = self.centerX!
                            }
                            if self.centerY != nil {
                                map["CenterY"] = self.centerY!
                            }
                            if self.height != nil {
                                map["Height"] = self.height!
                            }
                            if self.width != nil {
                                map["Width"] = self.width!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("CenterX") && dict["CenterX"] != nil {
                                self.centerX = dict["CenterX"] as! Int32
                            }
                            if dict.keys.contains("CenterY") && dict["CenterY"] != nil {
                                self.centerY = dict["CenterY"] as! Int32
                            }
                            if dict.keys.contains("Height") && dict["Height"] != nil {
                                self.height = dict["Height"] as! Int32
                            }
                            if dict.keys.contains("Width") && dict["Width"] != nil {
                                self.width = dict["Width"] as! Int32
                            }
                        }
                    }
                    public var angle: Int32?

                    public var data: [UInt8]?

                    public var qrCodePoints: [RecognizeAllTextResponseBody.Data.SubImages.QrCodeInfo.QrCodeDetails.QrCodePoints]?

                    public var qrCodeRect: RecognizeAllTextResponseBody.Data.SubImages.QrCodeInfo.QrCodeDetails.QrCodeRect?

                    public var type: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.qrCodeRect?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.angle != nil {
                            map["Angle"] = self.angle!
                        }
                        if self.data != nil {
                            map["Data"] = self.data!
                        }
                        if self.qrCodePoints != nil {
                            var tmp : [Any] = []
                            for k in self.qrCodePoints! {
                                tmp.append(k.toMap())
                            }
                            map["QrCodePoints"] = tmp
                        }
                        if self.qrCodeRect != nil {
                            map["QrCodeRect"] = self.qrCodeRect?.toMap()
                        }
                        if self.type != nil {
                            map["Type"] = self.type!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Angle") && dict["Angle"] != nil {
                            self.angle = dict["Angle"] as! Int32
                        }
                        if dict.keys.contains("Data") && dict["Data"] != nil {
                            self.data = dict["Data"] as! [UInt8]
                        }
                        if dict.keys.contains("QrCodePoints") && dict["QrCodePoints"] != nil {
                            var tmp : [RecognizeAllTextResponseBody.Data.SubImages.QrCodeInfo.QrCodeDetails.QrCodePoints] = []
                            for v in dict["QrCodePoints"] as! [Any] {
                                var model = RecognizeAllTextResponseBody.Data.SubImages.QrCodeInfo.QrCodeDetails.QrCodePoints()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.qrCodePoints = tmp
                        }
                        if dict.keys.contains("QrCodeRect") && dict["QrCodeRect"] != nil {
                            var model = RecognizeAllTextResponseBody.Data.SubImages.QrCodeInfo.QrCodeDetails.QrCodeRect()
                            model.fromMap(dict["QrCodeRect"] as! [String: Any])
                            self.qrCodeRect = model
                        }
                        if dict.keys.contains("Type") && dict["Type"] != nil {
                            self.type = dict["Type"] as! String
                        }
                    }
                }
                public var qrCodeCount: Int32?

                public var qrCodeDetails: [RecognizeAllTextResponseBody.Data.SubImages.QrCodeInfo.QrCodeDetails]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.qrCodeCount != nil {
                        map["QrCodeCount"] = self.qrCodeCount!
                    }
                    if self.qrCodeDetails != nil {
                        var tmp : [Any] = []
                        for k in self.qrCodeDetails! {
                            tmp.append(k.toMap())
                        }
                        map["QrCodeDetails"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("QrCodeCount") && dict["QrCodeCount"] != nil {
                        self.qrCodeCount = dict["QrCodeCount"] as! Int32
                    }
                    if dict.keys.contains("QrCodeDetails") && dict["QrCodeDetails"] != nil {
                        var tmp : [RecognizeAllTextResponseBody.Data.SubImages.QrCodeInfo.QrCodeDetails] = []
                        for v in dict["QrCodeDetails"] as! [Any] {
                            var model = RecognizeAllTextResponseBody.Data.SubImages.QrCodeInfo.QrCodeDetails()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.qrCodeDetails = tmp
                    }
                }
            }
            public class QualityInfo : Tea.TeaModel {
                public var completenessScore: Double?

                public var isCopy: Bool?

                public var isReshoot: Bool?

                public var qualityScore: Double?

                public var tamperScore: Double?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.completenessScore != nil {
                        map["CompletenessScore"] = self.completenessScore!
                    }
                    if self.isCopy != nil {
                        map["IsCopy"] = self.isCopy!
                    }
                    if self.isReshoot != nil {
                        map["IsReshoot"] = self.isReshoot!
                    }
                    if self.qualityScore != nil {
                        map["QualityScore"] = self.qualityScore!
                    }
                    if self.tamperScore != nil {
                        map["TamperScore"] = self.tamperScore!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CompletenessScore") && dict["CompletenessScore"] != nil {
                        self.completenessScore = dict["CompletenessScore"] as! Double
                    }
                    if dict.keys.contains("IsCopy") && dict["IsCopy"] != nil {
                        self.isCopy = dict["IsCopy"] as! Bool
                    }
                    if dict.keys.contains("IsReshoot") && dict["IsReshoot"] != nil {
                        self.isReshoot = dict["IsReshoot"] as! Bool
                    }
                    if dict.keys.contains("QualityScore") && dict["QualityScore"] != nil {
                        self.qualityScore = dict["QualityScore"] as! Double
                    }
                    if dict.keys.contains("TamperScore") && dict["TamperScore"] != nil {
                        self.tamperScore = dict["TamperScore"] as! Double
                    }
                }
            }
            public class RowInfo : Tea.TeaModel {
                public class RowDetails : Tea.TeaModel {
                    public var blockList: [Int32]?

                    public var rowContent: String?

                    public var rowId: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.blockList != nil {
                            map["BlockList"] = self.blockList!
                        }
                        if self.rowContent != nil {
                            map["RowContent"] = self.rowContent!
                        }
                        if self.rowId != nil {
                            map["RowId"] = self.rowId!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("BlockList") && dict["BlockList"] != nil {
                            self.blockList = dict["BlockList"] as! [Int32]
                        }
                        if dict.keys.contains("RowContent") && dict["RowContent"] != nil {
                            self.rowContent = dict["RowContent"] as! String
                        }
                        if dict.keys.contains("RowId") && dict["RowId"] != nil {
                            self.rowId = dict["RowId"] as! Int32
                        }
                    }
                }
                public var rowCount: Int32?

                public var rowDetails: [RecognizeAllTextResponseBody.Data.SubImages.RowInfo.RowDetails]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.rowCount != nil {
                        map["RowCount"] = self.rowCount!
                    }
                    if self.rowDetails != nil {
                        var tmp : [Any] = []
                        for k in self.rowDetails! {
                            tmp.append(k.toMap())
                        }
                        map["RowDetails"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("RowCount") && dict["RowCount"] != nil {
                        self.rowCount = dict["RowCount"] as! Int32
                    }
                    if dict.keys.contains("RowDetails") && dict["RowDetails"] != nil {
                        var tmp : [RecognizeAllTextResponseBody.Data.SubImages.RowInfo.RowDetails] = []
                        for v in dict["RowDetails"] as! [Any] {
                            var model = RecognizeAllTextResponseBody.Data.SubImages.RowInfo.RowDetails()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.rowDetails = tmp
                    }
                }
            }
            public class StampInfo : Tea.TeaModel {
                public class StampDetails : Tea.TeaModel {
                    public class Data : Tea.TeaModel {
                        public var antiFakeCode: String?

                        public var companyId: String?

                        public var organizationName: String?

                        public var organizationNameEng: String?

                        public var otherText: String?

                        public var taxpayerId: String?

                        public var topText: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.antiFakeCode != nil {
                                map["AntiFakeCode"] = self.antiFakeCode!
                            }
                            if self.companyId != nil {
                                map["CompanyId"] = self.companyId!
                            }
                            if self.organizationName != nil {
                                map["OrganizationName"] = self.organizationName!
                            }
                            if self.organizationNameEng != nil {
                                map["OrganizationNameEng"] = self.organizationNameEng!
                            }
                            if self.otherText != nil {
                                map["OtherText"] = self.otherText!
                            }
                            if self.taxpayerId != nil {
                                map["TaxpayerId"] = self.taxpayerId!
                            }
                            if self.topText != nil {
                                map["TopText"] = self.topText!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("AntiFakeCode") && dict["AntiFakeCode"] != nil {
                                self.antiFakeCode = dict["AntiFakeCode"] as! String
                            }
                            if dict.keys.contains("CompanyId") && dict["CompanyId"] != nil {
                                self.companyId = dict["CompanyId"] as! String
                            }
                            if dict.keys.contains("OrganizationName") && dict["OrganizationName"] != nil {
                                self.organizationName = dict["OrganizationName"] as! String
                            }
                            if dict.keys.contains("OrganizationNameEng") && dict["OrganizationNameEng"] != nil {
                                self.organizationNameEng = dict["OrganizationNameEng"] as! String
                            }
                            if dict.keys.contains("OtherText") && dict["OtherText"] != nil {
                                self.otherText = dict["OtherText"] as! String
                            }
                            if dict.keys.contains("TaxpayerId") && dict["TaxpayerId"] != nil {
                                self.taxpayerId = dict["TaxpayerId"] as! String
                            }
                            if dict.keys.contains("TopText") && dict["TopText"] != nil {
                                self.topText = dict["TopText"] as! String
                            }
                        }
                    }
                    public class StampPoints : Tea.TeaModel {
                        public var x: Int32?

                        public var y: Int32?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.x != nil {
                                map["X"] = self.x!
                            }
                            if self.y != nil {
                                map["Y"] = self.y!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("X") && dict["X"] != nil {
                                self.x = dict["X"] as! Int32
                            }
                            if dict.keys.contains("Y") && dict["Y"] != nil {
                                self.y = dict["Y"] as! Int32
                            }
                        }
                    }
                    public class StampRect : Tea.TeaModel {
                        public var centerX: Int32?

                        public var centerY: Int32?

                        public var height: Int32?

                        public var width: Int32?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.centerX != nil {
                                map["CenterX"] = self.centerX!
                            }
                            if self.centerY != nil {
                                map["CenterY"] = self.centerY!
                            }
                            if self.height != nil {
                                map["Height"] = self.height!
                            }
                            if self.width != nil {
                                map["Width"] = self.width!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("CenterX") && dict["CenterX"] != nil {
                                self.centerX = dict["CenterX"] as! Int32
                            }
                            if dict.keys.contains("CenterY") && dict["CenterY"] != nil {
                                self.centerY = dict["CenterY"] as! Int32
                            }
                            if dict.keys.contains("Height") && dict["Height"] != nil {
                                self.height = dict["Height"] as! Int32
                            }
                            if dict.keys.contains("Width") && dict["Width"] != nil {
                                self.width = dict["Width"] as! Int32
                            }
                        }
                    }
                    public var data: RecognizeAllTextResponseBody.Data.SubImages.StampInfo.StampDetails.Data?

                    public var stampAngle: Int32?

                    public var stampPoints: [RecognizeAllTextResponseBody.Data.SubImages.StampInfo.StampDetails.StampPoints]?

                    public var stampRect: RecognizeAllTextResponseBody.Data.SubImages.StampInfo.StampDetails.StampRect?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.data?.validate()
                        try self.stampRect?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.data != nil {
                            map["Data"] = self.data?.toMap()
                        }
                        if self.stampAngle != nil {
                            map["StampAngle"] = self.stampAngle!
                        }
                        if self.stampPoints != nil {
                            var tmp : [Any] = []
                            for k in self.stampPoints! {
                                tmp.append(k.toMap())
                            }
                            map["StampPoints"] = tmp
                        }
                        if self.stampRect != nil {
                            map["StampRect"] = self.stampRect?.toMap()
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Data") && dict["Data"] != nil {
                            var model = RecognizeAllTextResponseBody.Data.SubImages.StampInfo.StampDetails.Data()
                            model.fromMap(dict["Data"] as! [String: Any])
                            self.data = model
                        }
                        if dict.keys.contains("StampAngle") && dict["StampAngle"] != nil {
                            self.stampAngle = dict["StampAngle"] as! Int32
                        }
                        if dict.keys.contains("StampPoints") && dict["StampPoints"] != nil {
                            var tmp : [RecognizeAllTextResponseBody.Data.SubImages.StampInfo.StampDetails.StampPoints] = []
                            for v in dict["StampPoints"] as! [Any] {
                                var model = RecognizeAllTextResponseBody.Data.SubImages.StampInfo.StampDetails.StampPoints()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.stampPoints = tmp
                        }
                        if dict.keys.contains("StampRect") && dict["StampRect"] != nil {
                            var model = RecognizeAllTextResponseBody.Data.SubImages.StampInfo.StampDetails.StampRect()
                            model.fromMap(dict["StampRect"] as! [String: Any])
                            self.stampRect = model
                        }
                    }
                }
                public var stampCount: Int32?

                public var stampDetails: [RecognizeAllTextResponseBody.Data.SubImages.StampInfo.StampDetails]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.stampCount != nil {
                        map["StampCount"] = self.stampCount!
                    }
                    if self.stampDetails != nil {
                        var tmp : [Any] = []
                        for k in self.stampDetails! {
                            tmp.append(k.toMap())
                        }
                        map["StampDetails"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("StampCount") && dict["StampCount"] != nil {
                        self.stampCount = dict["StampCount"] as! Int32
                    }
                    if dict.keys.contains("StampDetails") && dict["StampDetails"] != nil {
                        var tmp : [RecognizeAllTextResponseBody.Data.SubImages.StampInfo.StampDetails] = []
                        for v in dict["StampDetails"] as! [Any] {
                            var model = RecognizeAllTextResponseBody.Data.SubImages.StampInfo.StampDetails()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.stampDetails = tmp
                    }
                }
            }
            public class SubImagePoints : Tea.TeaModel {
                public var x: Int32?

                public var y: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.x != nil {
                        map["X"] = self.x!
                    }
                    if self.y != nil {
                        map["Y"] = self.y!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("X") && dict["X"] != nil {
                        self.x = dict["X"] as! Int32
                    }
                    if dict.keys.contains("Y") && dict["Y"] != nil {
                        self.y = dict["Y"] as! Int32
                    }
                }
            }
            public class SubImageRect : Tea.TeaModel {
                public var centerX: Int32?

                public var centerY: Int32?

                public var height: Int32?

                public var width: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.centerX != nil {
                        map["CenterX"] = self.centerX!
                    }
                    if self.centerY != nil {
                        map["CenterY"] = self.centerY!
                    }
                    if self.height != nil {
                        map["Height"] = self.height!
                    }
                    if self.width != nil {
                        map["Width"] = self.width!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CenterX") && dict["CenterX"] != nil {
                        self.centerX = dict["CenterX"] as! Int32
                    }
                    if dict.keys.contains("CenterY") && dict["CenterY"] != nil {
                        self.centerY = dict["CenterY"] as! Int32
                    }
                    if dict.keys.contains("Height") && dict["Height"] != nil {
                        self.height = dict["Height"] as! Int32
                    }
                    if dict.keys.contains("Width") && dict["Width"] != nil {
                        self.width = dict["Width"] as! Int32
                    }
                }
            }
            public class TableInfo : Tea.TeaModel {
                public class TableDetails : Tea.TeaModel {
                    public class CellDetails : Tea.TeaModel {
                        public class CellPoints : Tea.TeaModel {
                            public var x: Int32?

                            public var y: Int32?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.x != nil {
                                    map["X"] = self.x!
                                }
                                if self.y != nil {
                                    map["Y"] = self.y!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("X") && dict["X"] != nil {
                                    self.x = dict["X"] as! Int32
                                }
                                if dict.keys.contains("Y") && dict["Y"] != nil {
                                    self.y = dict["Y"] as! Int32
                                }
                            }
                        }
                        public class CellRect : Tea.TeaModel {
                            public var centerX: Int32?

                            public var centerY: Int32?

                            public var height: Int32?

                            public var width: Int32?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.centerX != nil {
                                    map["CenterX"] = self.centerX!
                                }
                                if self.centerY != nil {
                                    map["CenterY"] = self.centerY!
                                }
                                if self.height != nil {
                                    map["Height"] = self.height!
                                }
                                if self.width != nil {
                                    map["Width"] = self.width!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("CenterX") && dict["CenterX"] != nil {
                                    self.centerX = dict["CenterX"] as! Int32
                                }
                                if dict.keys.contains("CenterY") && dict["CenterY"] != nil {
                                    self.centerY = dict["CenterY"] as! Int32
                                }
                                if dict.keys.contains("Height") && dict["Height"] != nil {
                                    self.height = dict["Height"] as! Int32
                                }
                                if dict.keys.contains("Width") && dict["Width"] != nil {
                                    self.width = dict["Width"] as! Int32
                                }
                            }
                        }
                        public var blockList: [Int32]?

                        public var cellAngle: Int32?

                        public var cellContent: String?

                        public var cellId: Int32?

                        public var cellPoints: [RecognizeAllTextResponseBody.Data.SubImages.TableInfo.TableDetails.CellDetails.CellPoints]?

                        public var cellRect: RecognizeAllTextResponseBody.Data.SubImages.TableInfo.TableDetails.CellDetails.CellRect?

                        public var columnEnd: Int32?

                        public var columnStart: Int32?

                        public var rowEnd: Int32?

                        public var rowStart: Int32?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                            try self.cellRect?.validate()
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.blockList != nil {
                                map["BlockList"] = self.blockList!
                            }
                            if self.cellAngle != nil {
                                map["CellAngle"] = self.cellAngle!
                            }
                            if self.cellContent != nil {
                                map["CellContent"] = self.cellContent!
                            }
                            if self.cellId != nil {
                                map["CellId"] = self.cellId!
                            }
                            if self.cellPoints != nil {
                                var tmp : [Any] = []
                                for k in self.cellPoints! {
                                    tmp.append(k.toMap())
                                }
                                map["CellPoints"] = tmp
                            }
                            if self.cellRect != nil {
                                map["CellRect"] = self.cellRect?.toMap()
                            }
                            if self.columnEnd != nil {
                                map["ColumnEnd"] = self.columnEnd!
                            }
                            if self.columnStart != nil {
                                map["ColumnStart"] = self.columnStart!
                            }
                            if self.rowEnd != nil {
                                map["RowEnd"] = self.rowEnd!
                            }
                            if self.rowStart != nil {
                                map["RowStart"] = self.rowStart!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("BlockList") && dict["BlockList"] != nil {
                                self.blockList = dict["BlockList"] as! [Int32]
                            }
                            if dict.keys.contains("CellAngle") && dict["CellAngle"] != nil {
                                self.cellAngle = dict["CellAngle"] as! Int32
                            }
                            if dict.keys.contains("CellContent") && dict["CellContent"] != nil {
                                self.cellContent = dict["CellContent"] as! String
                            }
                            if dict.keys.contains("CellId") && dict["CellId"] != nil {
                                self.cellId = dict["CellId"] as! Int32
                            }
                            if dict.keys.contains("CellPoints") && dict["CellPoints"] != nil {
                                var tmp : [RecognizeAllTextResponseBody.Data.SubImages.TableInfo.TableDetails.CellDetails.CellPoints] = []
                                for v in dict["CellPoints"] as! [Any] {
                                    var model = RecognizeAllTextResponseBody.Data.SubImages.TableInfo.TableDetails.CellDetails.CellPoints()
                                    if v != nil {
                                        model.fromMap(v as! [String: Any])
                                    }
                                    tmp.append(model)
                                }
                                self.cellPoints = tmp
                            }
                            if dict.keys.contains("CellRect") && dict["CellRect"] != nil {
                                var model = RecognizeAllTextResponseBody.Data.SubImages.TableInfo.TableDetails.CellDetails.CellRect()
                                model.fromMap(dict["CellRect"] as! [String: Any])
                                self.cellRect = model
                            }
                            if dict.keys.contains("ColumnEnd") && dict["ColumnEnd"] != nil {
                                self.columnEnd = dict["ColumnEnd"] as! Int32
                            }
                            if dict.keys.contains("ColumnStart") && dict["ColumnStart"] != nil {
                                self.columnStart = dict["ColumnStart"] as! Int32
                            }
                            if dict.keys.contains("RowEnd") && dict["RowEnd"] != nil {
                                self.rowEnd = dict["RowEnd"] as! Int32
                            }
                            if dict.keys.contains("RowStart") && dict["RowStart"] != nil {
                                self.rowStart = dict["RowStart"] as! Int32
                            }
                        }
                    }
                    public class Footer : Tea.TeaModel {
                        public class Points : Tea.TeaModel {
                            public var x: Int32?

                            public var y: Int32?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.x != nil {
                                    map["X"] = self.x!
                                }
                                if self.y != nil {
                                    map["Y"] = self.y!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("X") && dict["X"] != nil {
                                    self.x = dict["X"] as! Int32
                                }
                                if dict.keys.contains("Y") && dict["Y"] != nil {
                                    self.y = dict["Y"] as! Int32
                                }
                            }
                        }
                        public var blockId: Int32?

                        public var contents: [String]?

                        public var points: [RecognizeAllTextResponseBody.Data.SubImages.TableInfo.TableDetails.Footer.Points]?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.blockId != nil {
                                map["BlockId"] = self.blockId!
                            }
                            if self.contents != nil {
                                map["Contents"] = self.contents!
                            }
                            if self.points != nil {
                                var tmp : [Any] = []
                                for k in self.points! {
                                    tmp.append(k.toMap())
                                }
                                map["Points"] = tmp
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("BlockId") && dict["BlockId"] != nil {
                                self.blockId = dict["BlockId"] as! Int32
                            }
                            if dict.keys.contains("Contents") && dict["Contents"] != nil {
                                self.contents = dict["Contents"] as! [String]
                            }
                            if dict.keys.contains("Points") && dict["Points"] != nil {
                                var tmp : [RecognizeAllTextResponseBody.Data.SubImages.TableInfo.TableDetails.Footer.Points] = []
                                for v in dict["Points"] as! [Any] {
                                    var model = RecognizeAllTextResponseBody.Data.SubImages.TableInfo.TableDetails.Footer.Points()
                                    if v != nil {
                                        model.fromMap(v as! [String: Any])
                                    }
                                    tmp.append(model)
                                }
                                self.points = tmp
                            }
                        }
                    }
                    public class Header : Tea.TeaModel {
                        public class Points : Tea.TeaModel {
                            public var x: Int32?

                            public var y: Int32?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.x != nil {
                                    map["X"] = self.x!
                                }
                                if self.y != nil {
                                    map["Y"] = self.y!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("X") && dict["X"] != nil {
                                    self.x = dict["X"] as! Int32
                                }
                                if dict.keys.contains("Y") && dict["Y"] != nil {
                                    self.y = dict["Y"] as! Int32
                                }
                            }
                        }
                        public var blockId: Int32?

                        public var contents: [String]?

                        public var points: [RecognizeAllTextResponseBody.Data.SubImages.TableInfo.TableDetails.Header.Points]?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.blockId != nil {
                                map["BlockId"] = self.blockId!
                            }
                            if self.contents != nil {
                                map["Contents"] = self.contents!
                            }
                            if self.points != nil {
                                var tmp : [Any] = []
                                for k in self.points! {
                                    tmp.append(k.toMap())
                                }
                                map["Points"] = tmp
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("BlockId") && dict["BlockId"] != nil {
                                self.blockId = dict["BlockId"] as! Int32
                            }
                            if dict.keys.contains("Contents") && dict["Contents"] != nil {
                                self.contents = dict["Contents"] as! [String]
                            }
                            if dict.keys.contains("Points") && dict["Points"] != nil {
                                var tmp : [RecognizeAllTextResponseBody.Data.SubImages.TableInfo.TableDetails.Header.Points] = []
                                for v in dict["Points"] as! [Any] {
                                    var model = RecognizeAllTextResponseBody.Data.SubImages.TableInfo.TableDetails.Header.Points()
                                    if v != nil {
                                        model.fromMap(v as! [String: Any])
                                    }
                                    tmp.append(model)
                                }
                                self.points = tmp
                            }
                        }
                    }
                    public class TablePoints : Tea.TeaModel {
                        public var x: Int32?

                        public var y: Int32?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.x != nil {
                                map["X"] = self.x!
                            }
                            if self.y != nil {
                                map["Y"] = self.y!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("X") && dict["X"] != nil {
                                self.x = dict["X"] as! Int32
                            }
                            if dict.keys.contains("Y") && dict["Y"] != nil {
                                self.y = dict["Y"] as! Int32
                            }
                        }
                    }
                    public class TableRect : Tea.TeaModel {
                        public var centerX: Int32?

                        public var centerY: Int32?

                        public var height: Int32?

                        public var width: Int32?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.centerX != nil {
                                map["CenterX"] = self.centerX!
                            }
                            if self.centerY != nil {
                                map["CenterY"] = self.centerY!
                            }
                            if self.height != nil {
                                map["Height"] = self.height!
                            }
                            if self.width != nil {
                                map["Width"] = self.width!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("CenterX") && dict["CenterX"] != nil {
                                self.centerX = dict["CenterX"] as! Int32
                            }
                            if dict.keys.contains("CenterY") && dict["CenterY"] != nil {
                                self.centerY = dict["CenterY"] as! Int32
                            }
                            if dict.keys.contains("Height") && dict["Height"] != nil {
                                self.height = dict["Height"] as! Int32
                            }
                            if dict.keys.contains("Width") && dict["Width"] != nil {
                                self.width = dict["Width"] as! Int32
                            }
                        }
                    }
                    public var cellCount: Int32?

                    public var cellDetails: [RecognizeAllTextResponseBody.Data.SubImages.TableInfo.TableDetails.CellDetails]?

                    public var columnCount: Int32?

                    public var footer: RecognizeAllTextResponseBody.Data.SubImages.TableInfo.TableDetails.Footer?

                    public var header: RecognizeAllTextResponseBody.Data.SubImages.TableInfo.TableDetails.Header?

                    public var rowCount: Int32?

                    public var tableId: Int32?

                    public var tablePoints: [RecognizeAllTextResponseBody.Data.SubImages.TableInfo.TableDetails.TablePoints]?

                    public var tableRect: RecognizeAllTextResponseBody.Data.SubImages.TableInfo.TableDetails.TableRect?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.footer?.validate()
                        try self.header?.validate()
                        try self.tableRect?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.cellCount != nil {
                            map["CellCount"] = self.cellCount!
                        }
                        if self.cellDetails != nil {
                            var tmp : [Any] = []
                            for k in self.cellDetails! {
                                tmp.append(k.toMap())
                            }
                            map["CellDetails"] = tmp
                        }
                        if self.columnCount != nil {
                            map["ColumnCount"] = self.columnCount!
                        }
                        if self.footer != nil {
                            map["Footer"] = self.footer?.toMap()
                        }
                        if self.header != nil {
                            map["Header"] = self.header?.toMap()
                        }
                        if self.rowCount != nil {
                            map["RowCount"] = self.rowCount!
                        }
                        if self.tableId != nil {
                            map["TableId"] = self.tableId!
                        }
                        if self.tablePoints != nil {
                            var tmp : [Any] = []
                            for k in self.tablePoints! {
                                tmp.append(k.toMap())
                            }
                            map["TablePoints"] = tmp
                        }
                        if self.tableRect != nil {
                            map["TableRect"] = self.tableRect?.toMap()
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("CellCount") && dict["CellCount"] != nil {
                            self.cellCount = dict["CellCount"] as! Int32
                        }
                        if dict.keys.contains("CellDetails") && dict["CellDetails"] != nil {
                            var tmp : [RecognizeAllTextResponseBody.Data.SubImages.TableInfo.TableDetails.CellDetails] = []
                            for v in dict["CellDetails"] as! [Any] {
                                var model = RecognizeAllTextResponseBody.Data.SubImages.TableInfo.TableDetails.CellDetails()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.cellDetails = tmp
                        }
                        if dict.keys.contains("ColumnCount") && dict["ColumnCount"] != nil {
                            self.columnCount = dict["ColumnCount"] as! Int32
                        }
                        if dict.keys.contains("Footer") && dict["Footer"] != nil {
                            var model = RecognizeAllTextResponseBody.Data.SubImages.TableInfo.TableDetails.Footer()
                            model.fromMap(dict["Footer"] as! [String: Any])
                            self.footer = model
                        }
                        if dict.keys.contains("Header") && dict["Header"] != nil {
                            var model = RecognizeAllTextResponseBody.Data.SubImages.TableInfo.TableDetails.Header()
                            model.fromMap(dict["Header"] as! [String: Any])
                            self.header = model
                        }
                        if dict.keys.contains("RowCount") && dict["RowCount"] != nil {
                            self.rowCount = dict["RowCount"] as! Int32
                        }
                        if dict.keys.contains("TableId") && dict["TableId"] != nil {
                            self.tableId = dict["TableId"] as! Int32
                        }
                        if dict.keys.contains("TablePoints") && dict["TablePoints"] != nil {
                            var tmp : [RecognizeAllTextResponseBody.Data.SubImages.TableInfo.TableDetails.TablePoints] = []
                            for v in dict["TablePoints"] as! [Any] {
                                var model = RecognizeAllTextResponseBody.Data.SubImages.TableInfo.TableDetails.TablePoints()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.tablePoints = tmp
                        }
                        if dict.keys.contains("TableRect") && dict["TableRect"] != nil {
                            var model = RecognizeAllTextResponseBody.Data.SubImages.TableInfo.TableDetails.TableRect()
                            model.fromMap(dict["TableRect"] as! [String: Any])
                            self.tableRect = model
                        }
                    }
                }
                public var tableCount: Int32?

                public var tableDetails: [RecognizeAllTextResponseBody.Data.SubImages.TableInfo.TableDetails]?

                public var tableExcel: String?

                public var tableHtml: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.tableCount != nil {
                        map["TableCount"] = self.tableCount!
                    }
                    if self.tableDetails != nil {
                        var tmp : [Any] = []
                        for k in self.tableDetails! {
                            tmp.append(k.toMap())
                        }
                        map["TableDetails"] = tmp
                    }
                    if self.tableExcel != nil {
                        map["TableExcel"] = self.tableExcel!
                    }
                    if self.tableHtml != nil {
                        map["TableHtml"] = self.tableHtml!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("TableCount") && dict["TableCount"] != nil {
                        self.tableCount = dict["TableCount"] as! Int32
                    }
                    if dict.keys.contains("TableDetails") && dict["TableDetails"] != nil {
                        var tmp : [RecognizeAllTextResponseBody.Data.SubImages.TableInfo.TableDetails] = []
                        for v in dict["TableDetails"] as! [Any] {
                            var model = RecognizeAllTextResponseBody.Data.SubImages.TableInfo.TableDetails()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.tableDetails = tmp
                    }
                    if dict.keys.contains("TableExcel") && dict["TableExcel"] != nil {
                        self.tableExcel = dict["TableExcel"] as! String
                    }
                    if dict.keys.contains("TableHtml") && dict["TableHtml"] != nil {
                        self.tableHtml = dict["TableHtml"] as! String
                    }
                }
            }
            public var angle: Int32?

            public var barCodeInfo: RecognizeAllTextResponseBody.Data.SubImages.BarCodeInfo?

            public var blockInfo: RecognizeAllTextResponseBody.Data.SubImages.BlockInfo?

            public var docLayouts: [RecognizeAllTextResponseBody.Data.SubImages.DocLayouts]?

            public var docSpecialTexts: [RecognizeAllTextResponseBody.Data.SubImages.DocSpecialTexts]?

            public var docSubField: [RecognizeAllTextResponseBody.Data.SubImages.DocSubField]?

            public var figureInfo: [String: DataSubImagesFigureInfoValue]?

            public var kvInfo: RecognizeAllTextResponseBody.Data.SubImages.KvInfo?

            public var mathInfos: [RecognizeAllTextResponseBody.Data.SubImages.MathInfos]?

            public var newStyleData: RecognizeAllTextResponseBody.Data.SubImages.NewStyleData?

            public var pageId: Int32?

            public var pageInfos: [RecognizeAllTextResponseBody.Data.SubImages.PageInfos]?

            public var pageTitle: String?

            public var paragraphInfo: RecognizeAllTextResponseBody.Data.SubImages.ParagraphInfo?

            public var partInfos: [RecognizeAllTextResponseBody.Data.SubImages.PartInfos]?

            public var qrCodeInfo: RecognizeAllTextResponseBody.Data.SubImages.QrCodeInfo?

            public var qualityInfo: RecognizeAllTextResponseBody.Data.SubImages.QualityInfo?

            public var rowInfo: RecognizeAllTextResponseBody.Data.SubImages.RowInfo?

            public var stampInfo: RecognizeAllTextResponseBody.Data.SubImages.StampInfo?

            public var subImageId: Int32?

            public var subImagePoints: [RecognizeAllTextResponseBody.Data.SubImages.SubImagePoints]?

            public var subImageRect: RecognizeAllTextResponseBody.Data.SubImages.SubImageRect?

            public var tableInfo: RecognizeAllTextResponseBody.Data.SubImages.TableInfo?

            public var type: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.barCodeInfo?.validate()
                try self.blockInfo?.validate()
                try self.kvInfo?.validate()
                try self.newStyleData?.validate()
                try self.paragraphInfo?.validate()
                try self.qrCodeInfo?.validate()
                try self.qualityInfo?.validate()
                try self.rowInfo?.validate()
                try self.stampInfo?.validate()
                try self.subImageRect?.validate()
                try self.tableInfo?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.angle != nil {
                    map["Angle"] = self.angle!
                }
                if self.barCodeInfo != nil {
                    map["BarCodeInfo"] = self.barCodeInfo?.toMap()
                }
                if self.blockInfo != nil {
                    map["BlockInfo"] = self.blockInfo?.toMap()
                }
                if self.docLayouts != nil {
                    var tmp : [Any] = []
                    for k in self.docLayouts! {
                        tmp.append(k.toMap())
                    }
                    map["DocLayouts"] = tmp
                }
                if self.docSpecialTexts != nil {
                    var tmp : [Any] = []
                    for k in self.docSpecialTexts! {
                        tmp.append(k.toMap())
                    }
                    map["DocSpecialTexts"] = tmp
                }
                if self.docSubField != nil {
                    var tmp : [Any] = []
                    for k in self.docSubField! {
                        tmp.append(k.toMap())
                    }
                    map["DocSubField"] = tmp
                }
                if self.figureInfo != nil {
                    var tmp : [String: Any] = [:]
                    for (k, v) in self.figureInfo! {
                        tmp[k] = v.toMap()
                    }
                    map["FigureInfo"] = tmp
                }
                if self.kvInfo != nil {
                    map["KvInfo"] = self.kvInfo?.toMap()
                }
                if self.mathInfos != nil {
                    var tmp : [Any] = []
                    for k in self.mathInfos! {
                        tmp.append(k.toMap())
                    }
                    map["MathInfos"] = tmp
                }
                if self.newStyleData != nil {
                    map["NewStyleData"] = self.newStyleData?.toMap()
                }
                if self.pageId != nil {
                    map["PageId"] = self.pageId!
                }
                if self.pageInfos != nil {
                    var tmp : [Any] = []
                    for k in self.pageInfos! {
                        tmp.append(k.toMap())
                    }
                    map["PageInfos"] = tmp
                }
                if self.pageTitle != nil {
                    map["PageTitle"] = self.pageTitle!
                }
                if self.paragraphInfo != nil {
                    map["ParagraphInfo"] = self.paragraphInfo?.toMap()
                }
                if self.partInfos != nil {
                    var tmp : [Any] = []
                    for k in self.partInfos! {
                        tmp.append(k.toMap())
                    }
                    map["PartInfos"] = tmp
                }
                if self.qrCodeInfo != nil {
                    map["QrCodeInfo"] = self.qrCodeInfo?.toMap()
                }
                if self.qualityInfo != nil {
                    map["QualityInfo"] = self.qualityInfo?.toMap()
                }
                if self.rowInfo != nil {
                    map["RowInfo"] = self.rowInfo?.toMap()
                }
                if self.stampInfo != nil {
                    map["StampInfo"] = self.stampInfo?.toMap()
                }
                if self.subImageId != nil {
                    map["SubImageId"] = self.subImageId!
                }
                if self.subImagePoints != nil {
                    var tmp : [Any] = []
                    for k in self.subImagePoints! {
                        tmp.append(k.toMap())
                    }
                    map["SubImagePoints"] = tmp
                }
                if self.subImageRect != nil {
                    map["SubImageRect"] = self.subImageRect?.toMap()
                }
                if self.tableInfo != nil {
                    map["TableInfo"] = self.tableInfo?.toMap()
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Angle") && dict["Angle"] != nil {
                    self.angle = dict["Angle"] as! Int32
                }
                if dict.keys.contains("BarCodeInfo") && dict["BarCodeInfo"] != nil {
                    var model = RecognizeAllTextResponseBody.Data.SubImages.BarCodeInfo()
                    model.fromMap(dict["BarCodeInfo"] as! [String: Any])
                    self.barCodeInfo = model
                }
                if dict.keys.contains("BlockInfo") && dict["BlockInfo"] != nil {
                    var model = RecognizeAllTextResponseBody.Data.SubImages.BlockInfo()
                    model.fromMap(dict["BlockInfo"] as! [String: Any])
                    self.blockInfo = model
                }
                if dict.keys.contains("DocLayouts") && dict["DocLayouts"] != nil {
                    var tmp : [RecognizeAllTextResponseBody.Data.SubImages.DocLayouts] = []
                    for v in dict["DocLayouts"] as! [Any] {
                        var model = RecognizeAllTextResponseBody.Data.SubImages.DocLayouts()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.docLayouts = tmp
                }
                if dict.keys.contains("DocSpecialTexts") && dict["DocSpecialTexts"] != nil {
                    var tmp : [RecognizeAllTextResponseBody.Data.SubImages.DocSpecialTexts] = []
                    for v in dict["DocSpecialTexts"] as! [Any] {
                        var model = RecognizeAllTextResponseBody.Data.SubImages.DocSpecialTexts()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.docSpecialTexts = tmp
                }
                if dict.keys.contains("DocSubField") && dict["DocSubField"] != nil {
                    var tmp : [RecognizeAllTextResponseBody.Data.SubImages.DocSubField] = []
                    for v in dict["DocSubField"] as! [Any] {
                        var model = RecognizeAllTextResponseBody.Data.SubImages.DocSubField()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.docSubField = tmp
                }
                if dict.keys.contains("FigureInfo") && dict["FigureInfo"] != nil {
                    var tmp : [String: DataSubImagesFigureInfoValue] = [:]
                    for (k, v) in dict["FigureInfo"] as! [String: Any] {
                        if v != nil {
                            var model = DataSubImagesFigureInfoValue()
                            model.fromMap(v as! [String: Any])
                            tmp[k] = model
                        }
                    }
                    self.figureInfo = tmp
                }
                if dict.keys.contains("KvInfo") && dict["KvInfo"] != nil {
                    var model = RecognizeAllTextResponseBody.Data.SubImages.KvInfo()
                    model.fromMap(dict["KvInfo"] as! [String: Any])
                    self.kvInfo = model
                }
                if dict.keys.contains("MathInfos") && dict["MathInfos"] != nil {
                    var tmp : [RecognizeAllTextResponseBody.Data.SubImages.MathInfos] = []
                    for v in dict["MathInfos"] as! [Any] {
                        var model = RecognizeAllTextResponseBody.Data.SubImages.MathInfos()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.mathInfos = tmp
                }
                if dict.keys.contains("NewStyleData") && dict["NewStyleData"] != nil {
                    var model = RecognizeAllTextResponseBody.Data.SubImages.NewStyleData()
                    model.fromMap(dict["NewStyleData"] as! [String: Any])
                    self.newStyleData = model
                }
                if dict.keys.contains("PageId") && dict["PageId"] != nil {
                    self.pageId = dict["PageId"] as! Int32
                }
                if dict.keys.contains("PageInfos") && dict["PageInfos"] != nil {
                    var tmp : [RecognizeAllTextResponseBody.Data.SubImages.PageInfos] = []
                    for v in dict["PageInfos"] as! [Any] {
                        var model = RecognizeAllTextResponseBody.Data.SubImages.PageInfos()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.pageInfos = tmp
                }
                if dict.keys.contains("PageTitle") && dict["PageTitle"] != nil {
                    self.pageTitle = dict["PageTitle"] as! String
                }
                if dict.keys.contains("ParagraphInfo") && dict["ParagraphInfo"] != nil {
                    var model = RecognizeAllTextResponseBody.Data.SubImages.ParagraphInfo()
                    model.fromMap(dict["ParagraphInfo"] as! [String: Any])
                    self.paragraphInfo = model
                }
                if dict.keys.contains("PartInfos") && dict["PartInfos"] != nil {
                    var tmp : [RecognizeAllTextResponseBody.Data.SubImages.PartInfos] = []
                    for v in dict["PartInfos"] as! [Any] {
                        var model = RecognizeAllTextResponseBody.Data.SubImages.PartInfos()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.partInfos = tmp
                }
                if dict.keys.contains("QrCodeInfo") && dict["QrCodeInfo"] != nil {
                    var model = RecognizeAllTextResponseBody.Data.SubImages.QrCodeInfo()
                    model.fromMap(dict["QrCodeInfo"] as! [String: Any])
                    self.qrCodeInfo = model
                }
                if dict.keys.contains("QualityInfo") && dict["QualityInfo"] != nil {
                    var model = RecognizeAllTextResponseBody.Data.SubImages.QualityInfo()
                    model.fromMap(dict["QualityInfo"] as! [String: Any])
                    self.qualityInfo = model
                }
                if dict.keys.contains("RowInfo") && dict["RowInfo"] != nil {
                    var model = RecognizeAllTextResponseBody.Data.SubImages.RowInfo()
                    model.fromMap(dict["RowInfo"] as! [String: Any])
                    self.rowInfo = model
                }
                if dict.keys.contains("StampInfo") && dict["StampInfo"] != nil {
                    var model = RecognizeAllTextResponseBody.Data.SubImages.StampInfo()
                    model.fromMap(dict["StampInfo"] as! [String: Any])
                    self.stampInfo = model
                }
                if dict.keys.contains("SubImageId") && dict["SubImageId"] != nil {
                    self.subImageId = dict["SubImageId"] as! Int32
                }
                if dict.keys.contains("SubImagePoints") && dict["SubImagePoints"] != nil {
                    var tmp : [RecognizeAllTextResponseBody.Data.SubImages.SubImagePoints] = []
                    for v in dict["SubImagePoints"] as! [Any] {
                        var model = RecognizeAllTextResponseBody.Data.SubImages.SubImagePoints()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.subImagePoints = tmp
                }
                if dict.keys.contains("SubImageRect") && dict["SubImageRect"] != nil {
                    var model = RecognizeAllTextResponseBody.Data.SubImages.SubImageRect()
                    model.fromMap(dict["SubImageRect"] as! [String: Any])
                    self.subImageRect = model
                }
                if dict.keys.contains("TableInfo") && dict["TableInfo"] != nil {
                    var model = RecognizeAllTextResponseBody.Data.SubImages.TableInfo()
                    model.fromMap(dict["TableInfo"] as! [String: Any])
                    self.tableInfo = model
                }
                if dict.keys.contains("Type") && dict["Type"] != nil {
                    self.type = dict["Type"] as! String
                }
            }
        }
        public var algoServer: [String]?

        public var algoVersion: String?

        public var content: String?

        public var debugInfo: Any?

        public var height: Int32?

        public var isMixedMode: Bool?

        public var kvExcelUrl: String?

        public var pageNo: Int32?

        public var subImageCount: Int32?

        public var subImages: [RecognizeAllTextResponseBody.Data.SubImages]?

        public var width: Int32?

        public var xmlResult: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.algoServer != nil {
                map["AlgoServer"] = self.algoServer!
            }
            if self.algoVersion != nil {
                map["AlgoVersion"] = self.algoVersion!
            }
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.debugInfo != nil {
                map["DebugInfo"] = self.debugInfo!
            }
            if self.height != nil {
                map["Height"] = self.height!
            }
            if self.isMixedMode != nil {
                map["IsMixedMode"] = self.isMixedMode!
            }
            if self.kvExcelUrl != nil {
                map["KvExcelUrl"] = self.kvExcelUrl!
            }
            if self.pageNo != nil {
                map["PageNo"] = self.pageNo!
            }
            if self.subImageCount != nil {
                map["SubImageCount"] = self.subImageCount!
            }
            if self.subImages != nil {
                var tmp : [Any] = []
                for k in self.subImages! {
                    tmp.append(k.toMap())
                }
                map["SubImages"] = tmp
            }
            if self.width != nil {
                map["Width"] = self.width!
            }
            if self.xmlResult != nil {
                map["XmlResult"] = self.xmlResult!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AlgoServer") && dict["AlgoServer"] != nil {
                self.algoServer = dict["AlgoServer"] as! [String]
            }
            if dict.keys.contains("AlgoVersion") && dict["AlgoVersion"] != nil {
                self.algoVersion = dict["AlgoVersion"] as! String
            }
            if dict.keys.contains("Content") && dict["Content"] != nil {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("DebugInfo") && dict["DebugInfo"] != nil {
                self.debugInfo = dict["DebugInfo"] as! Any
            }
            if dict.keys.contains("Height") && dict["Height"] != nil {
                self.height = dict["Height"] as! Int32
            }
            if dict.keys.contains("IsMixedMode") && dict["IsMixedMode"] != nil {
                self.isMixedMode = dict["IsMixedMode"] as! Bool
            }
            if dict.keys.contains("KvExcelUrl") && dict["KvExcelUrl"] != nil {
                self.kvExcelUrl = dict["KvExcelUrl"] as! String
            }
            if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
                self.pageNo = dict["PageNo"] as! Int32
            }
            if dict.keys.contains("SubImageCount") && dict["SubImageCount"] != nil {
                self.subImageCount = dict["SubImageCount"] as! Int32
            }
            if dict.keys.contains("SubImages") && dict["SubImages"] != nil {
                var tmp : [RecognizeAllTextResponseBody.Data.SubImages] = []
                for v in dict["SubImages"] as! [Any] {
                    var model = RecognizeAllTextResponseBody.Data.SubImages()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.subImages = tmp
            }
            if dict.keys.contains("Width") && dict["Width"] != nil {
                self.width = dict["Width"] as! Int32
            }
            if dict.keys.contains("XmlResult") && dict["XmlResult"] != nil {
                self.xmlResult = dict["XmlResult"] as! String
            }
        }
    }
    public var code: String?

    public var data: RecognizeAllTextResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = RecognizeAllTextResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeAllTextResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeAllTextResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeAllTextResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeBankAcceptanceRequest : Tea.TeaModel {
    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeBankAcceptanceResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeBankAcceptanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeBankAcceptanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeBankAcceptanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeBankAccountLicenseRequest : Tea.TeaModel {
    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeBankAccountLicenseResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeBankAccountLicenseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeBankAccountLicenseResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeBankAccountLicenseResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeBankCardRequest : Tea.TeaModel {
    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeBankCardResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeBankCardResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeBankCardResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeBankCardResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeBasicRequest : Tea.TeaModel {
    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeBasicResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeBasicResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeBasicResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeBasicResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeBirthCertificationRequest : Tea.TeaModel {
    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeBirthCertificationResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeBirthCertificationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeBirthCertificationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeBirthCertificationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeBusShipTicketRequest : Tea.TeaModel {
    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeBusShipTicketResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeBusShipTicketResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeBusShipTicketResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeBusShipTicketResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeBusinessLicenseRequest : Tea.TeaModel {
    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeBusinessLicenseResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeBusinessLicenseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeBusinessLicenseResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeBusinessLicenseResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeCarInvoiceRequest : Tea.TeaModel {
    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeCarInvoiceResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeCarInvoiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeCarInvoiceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeCarInvoiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeCarNumberRequest : Tea.TeaModel {
    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeCarNumberResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeCarNumberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeCarNumberResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeCarNumberResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeCarVinCodeRequest : Tea.TeaModel {
    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeCarVinCodeResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeCarVinCodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeCarVinCodeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeCarVinCodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeChinesePassportRequest : Tea.TeaModel {
    public var outputFigure: Bool?

    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.outputFigure != nil {
            map["OutputFigure"] = self.outputFigure!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OutputFigure") && dict["OutputFigure"] != nil {
            self.outputFigure = dict["OutputFigure"] as! Bool
        }
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeChinesePassportResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeChinesePassportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeChinesePassportResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeChinesePassportResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeCommonPrintedInvoiceRequest : Tea.TeaModel {
    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeCommonPrintedInvoiceResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeCommonPrintedInvoiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeCommonPrintedInvoiceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeCommonPrintedInvoiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeCosmeticProduceLicenseRequest : Tea.TeaModel {
    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeCosmeticProduceLicenseResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeCosmeticProduceLicenseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeCosmeticProduceLicenseResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeCosmeticProduceLicenseResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeCovidTestReportRequest : Tea.TeaModel {
    public var multipleResult: Bool?

    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.multipleResult != nil {
            map["MultipleResult"] = self.multipleResult!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MultipleResult") && dict["MultipleResult"] != nil {
            self.multipleResult = dict["MultipleResult"] as! Bool
        }
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeCovidTestReportResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeCovidTestReportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeCovidTestReportResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeCovidTestReportResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeCtwoMedicalDeviceManageLicenseRequest : Tea.TeaModel {
    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeCtwoMedicalDeviceManageLicenseResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeCtwoMedicalDeviceManageLicenseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeCtwoMedicalDeviceManageLicenseResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeCtwoMedicalDeviceManageLicenseResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeDocumentStructureRequest : Tea.TeaModel {
    public var needRotate: Bool?

    public var needSortPage: Bool?

    public var noStamp: Bool?

    public var outputCharInfo: Bool?

    public var outputTable: Bool?

    public var page: Bool?

    public var paragraph: Bool?

    public var row: Bool?

    public var url: String?

    public var useNewStyleOutput: Bool?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.needRotate != nil {
            map["NeedRotate"] = self.needRotate!
        }
        if self.needSortPage != nil {
            map["NeedSortPage"] = self.needSortPage!
        }
        if self.noStamp != nil {
            map["NoStamp"] = self.noStamp!
        }
        if self.outputCharInfo != nil {
            map["OutputCharInfo"] = self.outputCharInfo!
        }
        if self.outputTable != nil {
            map["OutputTable"] = self.outputTable!
        }
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.paragraph != nil {
            map["Paragraph"] = self.paragraph!
        }
        if self.row != nil {
            map["Row"] = self.row!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.useNewStyleOutput != nil {
            map["UseNewStyleOutput"] = self.useNewStyleOutput!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NeedRotate") && dict["NeedRotate"] != nil {
            self.needRotate = dict["NeedRotate"] as! Bool
        }
        if dict.keys.contains("NeedSortPage") && dict["NeedSortPage"] != nil {
            self.needSortPage = dict["NeedSortPage"] as! Bool
        }
        if dict.keys.contains("NoStamp") && dict["NoStamp"] != nil {
            self.noStamp = dict["NoStamp"] as! Bool
        }
        if dict.keys.contains("OutputCharInfo") && dict["OutputCharInfo"] != nil {
            self.outputCharInfo = dict["OutputCharInfo"] as! Bool
        }
        if dict.keys.contains("OutputTable") && dict["OutputTable"] != nil {
            self.outputTable = dict["OutputTable"] as! Bool
        }
        if dict.keys.contains("Page") && dict["Page"] != nil {
            self.page = dict["Page"] as! Bool
        }
        if dict.keys.contains("Paragraph") && dict["Paragraph"] != nil {
            self.paragraph = dict["Paragraph"] as! Bool
        }
        if dict.keys.contains("Row") && dict["Row"] != nil {
            self.row = dict["Row"] as! Bool
        }
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("UseNewStyleOutput") && dict["UseNewStyleOutput"] != nil {
            self.useNewStyleOutput = dict["UseNewStyleOutput"] as! Bool
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeDocumentStructureResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeDocumentStructureResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeDocumentStructureResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeDocumentStructureResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeDrivingLicenseRequest : Tea.TeaModel {
    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeDrivingLicenseResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeDrivingLicenseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeDrivingLicenseResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeDrivingLicenseResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeEduFormulaRequest : Tea.TeaModel {
    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeEduFormulaResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeEduFormulaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeEduFormulaResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeEduFormulaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeEduOralCalculationRequest : Tea.TeaModel {
    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeEduOralCalculationResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeEduOralCalculationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeEduOralCalculationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeEduOralCalculationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeEduPaperCutRequest : Tea.TeaModel {
    public var cutType: String?

    public var imageType: String?

    public var subject: String?

    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cutType != nil {
            map["CutType"] = self.cutType!
        }
        if self.imageType != nil {
            map["ImageType"] = self.imageType!
        }
        if self.subject != nil {
            map["Subject"] = self.subject!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CutType") && dict["CutType"] != nil {
            self.cutType = dict["CutType"] as! String
        }
        if dict.keys.contains("ImageType") && dict["ImageType"] != nil {
            self.imageType = dict["ImageType"] as! String
        }
        if dict.keys.contains("Subject") && dict["Subject"] != nil {
            self.subject = dict["Subject"] as! String
        }
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeEduPaperCutResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeEduPaperCutResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeEduPaperCutResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeEduPaperCutResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeEduPaperOcrRequest : Tea.TeaModel {
    public var imageType: String?

    public var outputOricoord: Bool?

    public var subject: String?

    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageType != nil {
            map["ImageType"] = self.imageType!
        }
        if self.outputOricoord != nil {
            map["OutputOricoord"] = self.outputOricoord!
        }
        if self.subject != nil {
            map["Subject"] = self.subject!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ImageType") && dict["ImageType"] != nil {
            self.imageType = dict["ImageType"] as! String
        }
        if dict.keys.contains("OutputOricoord") && dict["OutputOricoord"] != nil {
            self.outputOricoord = dict["OutputOricoord"] as! Bool
        }
        if dict.keys.contains("Subject") && dict["Subject"] != nil {
            self.subject = dict["Subject"] as! String
        }
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeEduPaperOcrResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeEduPaperOcrResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeEduPaperOcrResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeEduPaperOcrResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeEduPaperStructedRequest : Tea.TeaModel {
    public var needRotate: Bool?

    public var subject: String?

    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.needRotate != nil {
            map["NeedRotate"] = self.needRotate!
        }
        if self.subject != nil {
            map["Subject"] = self.subject!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NeedRotate") && dict["NeedRotate"] != nil {
            self.needRotate = dict["NeedRotate"] as! Bool
        }
        if dict.keys.contains("Subject") && dict["Subject"] != nil {
            self.subject = dict["Subject"] as! String
        }
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeEduPaperStructedResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeEduPaperStructedResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeEduPaperStructedResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeEduPaperStructedResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeEduQuestionOcrRequest : Tea.TeaModel {
    public var needRotate: Bool?

    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.needRotate != nil {
            map["NeedRotate"] = self.needRotate!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NeedRotate") && dict["NeedRotate"] != nil {
            self.needRotate = dict["NeedRotate"] as! Bool
        }
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeEduQuestionOcrResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeEduQuestionOcrResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeEduQuestionOcrResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeEduQuestionOcrResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeEnglishRequest : Tea.TeaModel {
    public var needRotate: Bool?

    public var outputTable: Bool?

    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.needRotate != nil {
            map["NeedRotate"] = self.needRotate!
        }
        if self.outputTable != nil {
            map["OutputTable"] = self.outputTable!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NeedRotate") && dict["NeedRotate"] != nil {
            self.needRotate = dict["NeedRotate"] as! Bool
        }
        if dict.keys.contains("OutputTable") && dict["OutputTable"] != nil {
            self.outputTable = dict["OutputTable"] as! Bool
        }
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeEnglishResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeEnglishResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeEnglishResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeEnglishResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeEstateCertificationRequest : Tea.TeaModel {
    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeEstateCertificationResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeEstateCertificationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeEstateCertificationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeEstateCertificationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeExitEntryPermitToHKRequest : Tea.TeaModel {
    public var outputFigure: Bool?

    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.outputFigure != nil {
            map["OutputFigure"] = self.outputFigure!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OutputFigure") && dict["OutputFigure"] != nil {
            self.outputFigure = dict["OutputFigure"] as! Bool
        }
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeExitEntryPermitToHKResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeExitEntryPermitToHKResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeExitEntryPermitToHKResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeExitEntryPermitToHKResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeExitEntryPermitToMainlandRequest : Tea.TeaModel {
    public var outputFigure: Bool?

    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.outputFigure != nil {
            map["OutputFigure"] = self.outputFigure!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OutputFigure") && dict["OutputFigure"] != nil {
            self.outputFigure = dict["OutputFigure"] as! Bool
        }
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeExitEntryPermitToMainlandResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeExitEntryPermitToMainlandResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeExitEntryPermitToMainlandResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeExitEntryPermitToMainlandResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeFoodManageLicenseRequest : Tea.TeaModel {
    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeFoodManageLicenseResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeFoodManageLicenseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeFoodManageLicenseResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeFoodManageLicenseResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeFoodProduceLicenseRequest : Tea.TeaModel {
    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeFoodProduceLicenseResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeFoodProduceLicenseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeFoodProduceLicenseResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeFoodProduceLicenseResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeGeneralRequest : Tea.TeaModel {
    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeGeneralResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeGeneralResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeGeneralResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeGeneralResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeHKIdcardRequest : Tea.TeaModel {
    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeHKIdcardResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeHKIdcardResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeHKIdcardResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeHKIdcardResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeHandwritingRequest : Tea.TeaModel {
    public var needRotate: Bool?

    public var needSortPage: Bool?

    public var outputCharInfo: Bool?

    public var outputTable: Bool?

    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.needRotate != nil {
            map["NeedRotate"] = self.needRotate!
        }
        if self.needSortPage != nil {
            map["NeedSortPage"] = self.needSortPage!
        }
        if self.outputCharInfo != nil {
            map["OutputCharInfo"] = self.outputCharInfo!
        }
        if self.outputTable != nil {
            map["OutputTable"] = self.outputTable!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NeedRotate") && dict["NeedRotate"] != nil {
            self.needRotate = dict["NeedRotate"] as! Bool
        }
        if dict.keys.contains("NeedSortPage") && dict["NeedSortPage"] != nil {
            self.needSortPage = dict["NeedSortPage"] as! Bool
        }
        if dict.keys.contains("OutputCharInfo") && dict["OutputCharInfo"] != nil {
            self.outputCharInfo = dict["OutputCharInfo"] as! Bool
        }
        if dict.keys.contains("OutputTable") && dict["OutputTable"] != nil {
            self.outputTable = dict["OutputTable"] as! Bool
        }
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeHandwritingResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeHandwritingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeHandwritingResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeHandwritingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeHealthCodeRequest : Tea.TeaModel {
    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeHealthCodeResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeHealthCodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeHealthCodeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeHealthCodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeHotelConsumeRequest : Tea.TeaModel {
    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeHotelConsumeResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeHotelConsumeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeHotelConsumeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeHotelConsumeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeHouseholdRequest : Tea.TeaModel {
    public var isResidentPage: Bool?

    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.isResidentPage != nil {
            map["IsResidentPage"] = self.isResidentPage!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsResidentPage") && dict["IsResidentPage"] != nil {
            self.isResidentPage = dict["IsResidentPage"] as! Bool
        }
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeHouseholdResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeHouseholdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeHouseholdResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeHouseholdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeIdcardRequest : Tea.TeaModel {
    public var outputFigure: Bool?

    public var outputQualityInfo: Bool?

    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.outputFigure != nil {
            map["OutputFigure"] = self.outputFigure!
        }
        if self.outputQualityInfo != nil {
            map["OutputQualityInfo"] = self.outputQualityInfo!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OutputFigure") && dict["OutputFigure"] != nil {
            self.outputFigure = dict["OutputFigure"] as! Bool
        }
        if dict.keys.contains("OutputQualityInfo") && dict["OutputQualityInfo"] != nil {
            self.outputQualityInfo = dict["OutputQualityInfo"] as! Bool
        }
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeIdcardResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeIdcardResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeIdcardResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeIdcardResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeInternationalBusinessLicenseRequest : Tea.TeaModel {
    public var country: String?

    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.country != nil {
            map["Country"] = self.country!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Country") && dict["Country"] != nil {
            self.country = dict["Country"] as! String
        }
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeInternationalBusinessLicenseResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeInternationalBusinessLicenseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeInternationalBusinessLicenseResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeInternationalBusinessLicenseResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeInternationalIdcardRequest : Tea.TeaModel {
    public var country: String?

    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.country != nil {
            map["Country"] = self.country!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Country") && dict["Country"] != nil {
            self.country = dict["Country"] as! String
        }
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeInternationalIdcardResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeInternationalIdcardResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeInternationalIdcardResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeInternationalIdcardResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeInvoiceRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeInvoiceResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeInvoiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeInvoiceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeInvoiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeJanpaneseRequest : Tea.TeaModel {
    public var needRotate: Bool?

    public var outputCharInfo: Bool?

    public var outputTable: Bool?

    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.needRotate != nil {
            map["NeedRotate"] = self.needRotate!
        }
        if self.outputCharInfo != nil {
            map["OutputCharInfo"] = self.outputCharInfo!
        }
        if self.outputTable != nil {
            map["OutputTable"] = self.outputTable!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NeedRotate") && dict["NeedRotate"] != nil {
            self.needRotate = dict["NeedRotate"] as! Bool
        }
        if dict.keys.contains("OutputCharInfo") && dict["OutputCharInfo"] != nil {
            self.outputCharInfo = dict["OutputCharInfo"] as! Bool
        }
        if dict.keys.contains("OutputTable") && dict["OutputTable"] != nil {
            self.outputTable = dict["OutputTable"] as! Bool
        }
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeJanpaneseResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeJanpaneseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeJanpaneseResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeJanpaneseResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeKoreanRequest : Tea.TeaModel {
    public var needRotate: Bool?

    public var outputCharInfo: Bool?

    public var outputTable: Bool?

    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.needRotate != nil {
            map["NeedRotate"] = self.needRotate!
        }
        if self.outputCharInfo != nil {
            map["OutputCharInfo"] = self.outputCharInfo!
        }
        if self.outputTable != nil {
            map["OutputTable"] = self.outputTable!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NeedRotate") && dict["NeedRotate"] != nil {
            self.needRotate = dict["NeedRotate"] as! Bool
        }
        if dict.keys.contains("OutputCharInfo") && dict["OutputCharInfo"] != nil {
            self.outputCharInfo = dict["OutputCharInfo"] as! Bool
        }
        if dict.keys.contains("OutputTable") && dict["OutputTable"] != nil {
            self.outputTable = dict["OutputTable"] as! Bool
        }
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeKoreanResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeKoreanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeKoreanResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeKoreanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeLatinRequest : Tea.TeaModel {
    public var needRotate: Bool?

    public var outputCharInfo: Bool?

    public var outputTable: Bool?

    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.needRotate != nil {
            map["NeedRotate"] = self.needRotate!
        }
        if self.outputCharInfo != nil {
            map["OutputCharInfo"] = self.outputCharInfo!
        }
        if self.outputTable != nil {
            map["OutputTable"] = self.outputTable!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NeedRotate") && dict["NeedRotate"] != nil {
            self.needRotate = dict["NeedRotate"] as! Bool
        }
        if dict.keys.contains("OutputCharInfo") && dict["OutputCharInfo"] != nil {
            self.outputCharInfo = dict["OutputCharInfo"] as! Bool
        }
        if dict.keys.contains("OutputTable") && dict["OutputTable"] != nil {
            self.outputTable = dict["OutputTable"] as! Bool
        }
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeLatinResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeLatinResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeLatinResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeLatinResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeMedicalDeviceManageLicenseRequest : Tea.TeaModel {
    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeMedicalDeviceManageLicenseResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeMedicalDeviceManageLicenseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeMedicalDeviceManageLicenseResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeMedicalDeviceManageLicenseResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeMedicalDeviceProduceLicenseRequest : Tea.TeaModel {
    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeMedicalDeviceProduceLicenseResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeMedicalDeviceProduceLicenseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeMedicalDeviceProduceLicenseResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeMedicalDeviceProduceLicenseResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeMixedInvoicesRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeMixedInvoicesResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeMixedInvoicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeMixedInvoicesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeMixedInvoicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeMultiLanguageRequest : Tea.TeaModel {
    public var languages: [String]?

    public var needRotate: Bool?

    public var needSortPage: Bool?

    public var outputCharInfo: Bool?

    public var outputTable: Bool?

    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.languages != nil {
            map["Languages"] = self.languages!
        }
        if self.needRotate != nil {
            map["NeedRotate"] = self.needRotate!
        }
        if self.needSortPage != nil {
            map["NeedSortPage"] = self.needSortPage!
        }
        if self.outputCharInfo != nil {
            map["OutputCharInfo"] = self.outputCharInfo!
        }
        if self.outputTable != nil {
            map["OutputTable"] = self.outputTable!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Languages") && dict["Languages"] != nil {
            self.languages = dict["Languages"] as! [String]
        }
        if dict.keys.contains("NeedRotate") && dict["NeedRotate"] != nil {
            self.needRotate = dict["NeedRotate"] as! Bool
        }
        if dict.keys.contains("NeedSortPage") && dict["NeedSortPage"] != nil {
            self.needSortPage = dict["NeedSortPage"] as! Bool
        }
        if dict.keys.contains("OutputCharInfo") && dict["OutputCharInfo"] != nil {
            self.outputCharInfo = dict["OutputCharInfo"] as! Bool
        }
        if dict.keys.contains("OutputTable") && dict["OutputTable"] != nil {
            self.outputTable = dict["OutputTable"] as! Bool
        }
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeMultiLanguageShrinkRequest : Tea.TeaModel {
    public var languagesShrink: String?

    public var needRotate: Bool?

    public var needSortPage: Bool?

    public var outputCharInfo: Bool?

    public var outputTable: Bool?

    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.languagesShrink != nil {
            map["Languages"] = self.languagesShrink!
        }
        if self.needRotate != nil {
            map["NeedRotate"] = self.needRotate!
        }
        if self.needSortPage != nil {
            map["NeedSortPage"] = self.needSortPage!
        }
        if self.outputCharInfo != nil {
            map["OutputCharInfo"] = self.outputCharInfo!
        }
        if self.outputTable != nil {
            map["OutputTable"] = self.outputTable!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Languages") && dict["Languages"] != nil {
            self.languagesShrink = dict["Languages"] as! String
        }
        if dict.keys.contains("NeedRotate") && dict["NeedRotate"] != nil {
            self.needRotate = dict["NeedRotate"] as! Bool
        }
        if dict.keys.contains("NeedSortPage") && dict["NeedSortPage"] != nil {
            self.needSortPage = dict["NeedSortPage"] as! Bool
        }
        if dict.keys.contains("OutputCharInfo") && dict["OutputCharInfo"] != nil {
            self.outputCharInfo = dict["OutputCharInfo"] as! Bool
        }
        if dict.keys.contains("OutputTable") && dict["OutputTable"] != nil {
            self.outputTable = dict["OutputTable"] as! Bool
        }
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeMultiLanguageResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeMultiLanguageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeMultiLanguageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeMultiLanguageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeNonTaxInvoiceRequest : Tea.TeaModel {
    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeNonTaxInvoiceResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeNonTaxInvoiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeNonTaxInvoiceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeNonTaxInvoiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizePassportRequest : Tea.TeaModel {
    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizePassportResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizePassportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizePassportResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizePassportResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizePaymentRecordRequest : Tea.TeaModel {
    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizePaymentRecordResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizePaymentRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizePaymentRecordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizePaymentRecordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizePurchaseRecordRequest : Tea.TeaModel {
    public var outputMultiOrders: Bool?

    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.outputMultiOrders != nil {
            map["OutputMultiOrders"] = self.outputMultiOrders!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OutputMultiOrders") && dict["OutputMultiOrders"] != nil {
            self.outputMultiOrders = dict["OutputMultiOrders"] as! Bool
        }
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizePurchaseRecordResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizePurchaseRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizePurchaseRecordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizePurchaseRecordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeQuotaInvoiceRequest : Tea.TeaModel {
    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeQuotaInvoiceResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeQuotaInvoiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeQuotaInvoiceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeQuotaInvoiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeRideHailingItineraryRequest : Tea.TeaModel {
    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeRideHailingItineraryResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeRideHailingItineraryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeRideHailingItineraryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeRideHailingItineraryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeRollTicketRequest : Tea.TeaModel {
    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeRollTicketResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeRollTicketResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeRollTicketResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeRollTicketResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeRussianRequest : Tea.TeaModel {
    public var needRotate: Bool?

    public var outputCharInfo: Bool?

    public var outputTable: Bool?

    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.needRotate != nil {
            map["NeedRotate"] = self.needRotate!
        }
        if self.outputCharInfo != nil {
            map["OutputCharInfo"] = self.outputCharInfo!
        }
        if self.outputTable != nil {
            map["OutputTable"] = self.outputTable!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NeedRotate") && dict["NeedRotate"] != nil {
            self.needRotate = dict["NeedRotate"] as! Bool
        }
        if dict.keys.contains("OutputCharInfo") && dict["OutputCharInfo"] != nil {
            self.outputCharInfo = dict["OutputCharInfo"] as! Bool
        }
        if dict.keys.contains("OutputTable") && dict["OutputTable"] != nil {
            self.outputTable = dict["OutputTable"] as! Bool
        }
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeRussianResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeRussianResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeRussianResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeRussianResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeShoppingReceiptRequest : Tea.TeaModel {
    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeShoppingReceiptResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeShoppingReceiptResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeShoppingReceiptResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeShoppingReceiptResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeSocialSecurityCardRequest : Tea.TeaModel {
    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeSocialSecurityCardResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeSocialSecurityCardResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeSocialSecurityCardResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeSocialSecurityCardResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeSocialSecurityCardVersionIIRequest : Tea.TeaModel {
    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeSocialSecurityCardVersionIIResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeSocialSecurityCardVersionIIResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeSocialSecurityCardVersionIIResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeSocialSecurityCardVersionIIResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeTableOcrRequest : Tea.TeaModel {
    public var isHandWriting: String?

    public var lineLess: Bool?

    public var needRotate: Bool?

    public var skipDetection: Bool?

    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.isHandWriting != nil {
            map["IsHandWriting"] = self.isHandWriting!
        }
        if self.lineLess != nil {
            map["LineLess"] = self.lineLess!
        }
        if self.needRotate != nil {
            map["NeedRotate"] = self.needRotate!
        }
        if self.skipDetection != nil {
            map["SkipDetection"] = self.skipDetection!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsHandWriting") && dict["IsHandWriting"] != nil {
            self.isHandWriting = dict["IsHandWriting"] as! String
        }
        if dict.keys.contains("LineLess") && dict["LineLess"] != nil {
            self.lineLess = dict["LineLess"] as! Bool
        }
        if dict.keys.contains("NeedRotate") && dict["NeedRotate"] != nil {
            self.needRotate = dict["NeedRotate"] as! Bool
        }
        if dict.keys.contains("SkipDetection") && dict["SkipDetection"] != nil {
            self.skipDetection = dict["SkipDetection"] as! Bool
        }
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeTableOcrResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeTableOcrResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeTableOcrResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeTableOcrResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeTaxClearanceCertificateRequest : Tea.TeaModel {
    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeTaxClearanceCertificateResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeTaxClearanceCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeTaxClearanceCertificateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeTaxClearanceCertificateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeTaxiInvoiceRequest : Tea.TeaModel {
    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeTaxiInvoiceResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeTaxiInvoiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeTaxiInvoiceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeTaxiInvoiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeThaiRequest : Tea.TeaModel {
    public var needRotate: Bool?

    public var outputCharInfo: Bool?

    public var outputTable: Bool?

    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.needRotate != nil {
            map["NeedRotate"] = self.needRotate!
        }
        if self.outputCharInfo != nil {
            map["OutputCharInfo"] = self.outputCharInfo!
        }
        if self.outputTable != nil {
            map["OutputTable"] = self.outputTable!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NeedRotate") && dict["NeedRotate"] != nil {
            self.needRotate = dict["NeedRotate"] as! Bool
        }
        if dict.keys.contains("OutputCharInfo") && dict["OutputCharInfo"] != nil {
            self.outputCharInfo = dict["OutputCharInfo"] as! Bool
        }
        if dict.keys.contains("OutputTable") && dict["OutputTable"] != nil {
            self.outputTable = dict["OutputTable"] as! Bool
        }
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeThaiResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeThaiResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeThaiResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeThaiResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeTollInvoiceRequest : Tea.TeaModel {
    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeTollInvoiceResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeTollInvoiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeTollInvoiceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeTollInvoiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeTradeMarkCertificationRequest : Tea.TeaModel {
    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeTradeMarkCertificationResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeTradeMarkCertificationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeTradeMarkCertificationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeTradeMarkCertificationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeTrainInvoiceRequest : Tea.TeaModel {
    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeTrainInvoiceResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeTrainInvoiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeTrainInvoiceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeTrainInvoiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeUsedCarInvoiceRequest : Tea.TeaModel {
    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeUsedCarInvoiceResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeUsedCarInvoiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeUsedCarInvoiceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeUsedCarInvoiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeVehicleCertificationRequest : Tea.TeaModel {
    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeVehicleCertificationResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeVehicleCertificationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeVehicleCertificationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeVehicleCertificationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeVehicleLicenseRequest : Tea.TeaModel {
    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeVehicleLicenseResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeVehicleLicenseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeVehicleLicenseResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeVehicleLicenseResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeVehicleRegistrationRequest : Tea.TeaModel {
    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeVehicleRegistrationResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeVehicleRegistrationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeVehicleRegistrationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeVehicleRegistrationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeWaybillRequest : Tea.TeaModel {
    public var url: String?

    public var body: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
    }
}

public class RecognizeWaybillResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecognizeWaybillResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeWaybillResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecognizeWaybillResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class VerifyBusinessLicenseRequest : Tea.TeaModel {
    public var companyName: String?

    public var creditCode: String?

    public var legalPerson: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.companyName != nil {
            map["CompanyName"] = self.companyName!
        }
        if self.creditCode != nil {
            map["CreditCode"] = self.creditCode!
        }
        if self.legalPerson != nil {
            map["LegalPerson"] = self.legalPerson!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CompanyName") && dict["CompanyName"] != nil {
            self.companyName = dict["CompanyName"] as! String
        }
        if dict.keys.contains("CreditCode") && dict["CreditCode"] != nil {
            self.creditCode = dict["CreditCode"] as! String
        }
        if dict.keys.contains("LegalPerson") && dict["LegalPerson"] != nil {
            self.legalPerson = dict["LegalPerson"] as! String
        }
    }
}

public class VerifyBusinessLicenseResponseBody : Tea.TeaModel {
    public var data: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class VerifyBusinessLicenseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: VerifyBusinessLicenseResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = VerifyBusinessLicenseResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class VerifyVATInvoiceRequest : Tea.TeaModel {
    public var invoiceCode: String?

    public var invoiceDate: String?

    public var invoiceNo: String?

    public var invoiceSum: String?

    public var verifyCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.invoiceCode != nil {
            map["InvoiceCode"] = self.invoiceCode!
        }
        if self.invoiceDate != nil {
            map["InvoiceDate"] = self.invoiceDate!
        }
        if self.invoiceNo != nil {
            map["InvoiceNo"] = self.invoiceNo!
        }
        if self.invoiceSum != nil {
            map["InvoiceSum"] = self.invoiceSum!
        }
        if self.verifyCode != nil {
            map["VerifyCode"] = self.verifyCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InvoiceCode") && dict["InvoiceCode"] != nil {
            self.invoiceCode = dict["InvoiceCode"] as! String
        }
        if dict.keys.contains("InvoiceDate") && dict["InvoiceDate"] != nil {
            self.invoiceDate = dict["InvoiceDate"] as! String
        }
        if dict.keys.contains("InvoiceNo") && dict["InvoiceNo"] != nil {
            self.invoiceNo = dict["InvoiceNo"] as! String
        }
        if dict.keys.contains("InvoiceSum") && dict["InvoiceSum"] != nil {
            self.invoiceSum = dict["InvoiceSum"] as! String
        }
        if dict.keys.contains("VerifyCode") && dict["VerifyCode"] != nil {
            self.verifyCode = dict["VerifyCode"] as! String
        }
    }
}

public class VerifyVATInvoiceResponseBody : Tea.TeaModel {
    public var data: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class VerifyVATInvoiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: VerifyVATInvoiceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = VerifyVATInvoiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
