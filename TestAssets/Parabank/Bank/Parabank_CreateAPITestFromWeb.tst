---
parasoftVersion: 2024.2.0
productVersion: 10.7.1
schemaVersion: 1
suite:
  $type: TestSuite
  hasEnvironmentConfig: true
  environmentConfig:
    environments:
    - variables:
      - name: QA1_PARASOFT_COM_BASE_URL
        value: http://qa1.parasoft.com:8090
      - name: SWAGGER
        value: http://localhost:40090/api/openapi.json
      - name: BASEURL
        value: http://localhost:40090/api
      name: Default qa1.parasoft.com Environment
    - variables:
      - name: QA1_PARASOFT_COM_BASE_URL
        value: http://18.237.146.177:8090
      - name: SWAGGER
        value: http://localhost:40090/api/openapi.json
      - name: BASEURL
        value: http://localhost:40090/api
      name: Docker AWS Demo Server Environment
      active: true
  enabled: true
  name: Test Suite
  rootTestSuite: true
  lastModifiedBy: whaaker
  browserOptions:
    browserType:
      useDefault: false
      type:
        $type: SingleBrowserType
        typeValue: 3
  profileMappingID: 0
  maxProfileMappingID: 3
  testLogicVariables:
  - $type: TestLogicString
    name: TSTName
    value:
      $type: TestLogicVariableString
      originalValue: Parabank-CreateAccount
      value: Parabank-CreateAccount
  nextIdentifier: 120
  runMode: 1
  tests:
  - $type: TestSuite
    testLogic: true
    testID: 95
    name: /api/openapi.json
    browserOptions:
      browserType:
        useDefault: false
        type:
          $type: CompositeBrowserType
          browserTypes:
          - $type: SingleBrowserType
            typeValue: 0
          - $type: SingleBrowserType
            typeValue: 3
          - $type: SingleBrowserType
            typeValue: 5
    profileMappingID: 1
    tests:
    - $type: TestSuite
      testLogic: true
      testID: 96
      enabled: true
      name: /v1/sessions
      profileMappingID: 2
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 97
        enabled: true
        name: /v1/sessions - GET
        performanceGroup: 0
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: /v1/sessions - GET
          formJson:
            value:
              $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                localName: root
                bodyType:
                  $type: ComplexType
                  hash: 2
                  attributes:
                  - hash: 3
                    ns: ""
                    name: type
                    fixed: object
                    contentType:
                      $type: StringType
                      hash: 4
                    required: true
                  name: rootType
                  compositor: true
                  compositorObj:
                    $type: AllCompositor
                    hash: 5
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                    xmlEncoding: 2
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://localhost:40090/api/openapi.json
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          xmlBuilder: false
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                localName: ""
                bodyType:
                  $type: ComplexType
                  hash: 2
                  name: anonymous
                  compositor: true
                  compositorObj:
                    $type: SequenceCompositor
                    hash: 3
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/v1/sessions"
          transportProperties:
            manager:
              protocol: 1
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    customType: 1
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: GET
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
                showRequestHeaders: true
                showResponseHeaders: true
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: ""
              type: application/json
          mode: Literal
          literalQuery:
            isPropertiesRef: true
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: v1
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: sessions
          resourceMethod:
            resourceId: /v1/sessions
            httpMethod: GET
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://localhost:40090/api
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
      - $type: RESTClientToolTest
        testLogic: true
        testID: 98
        enabled: true
        name: /v1/sessions - POST
        performanceGroup: 1
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: /v1/sessions - POST
          formJson:
            builtFromSchema: true
            value:
              $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                localName: root
                bodyType:
                  $type: ComplexType
                  hash: 2
                  attributes:
                  - hash: 3
                    ns: ""
                    name: type
                    defaultValue: object
                    fixed: object
                    contentType:
                      $type: StringType
                      hash: 4
                    required: true
                  name: /components/schemas/ProxySessionPostRequest
                  compositor: true
                  compositorObj:
                    $type: AllCompositor
                    hash: 5
                    types:
                    - $type: ElementType
                      hash: 6
                      minOccurs: 0
                      localName: coverageUser
                      bodyType:
                        $type: ComplexType
                        hash: 7
                        attributes:
                        - hash: 8
                          ns: ""
                          name: type
                          defaultValue: string
                          fixed: string
                          contentType:
                            $type: StringType
                            hash: 9
                          required: true
                        content: true
                        contentObj:
                          $type: StringType
                          hash: 9
                        namespace: urn:parasoft:json
                        name: string
                        compositor: true
                        compositorObj:
                          $type: SequenceCompositor
                          hash: 10
                    - $type: ElementType
                      hash: 11
                      minOccurs: 0
                      localName: soavirt
                      bodyType:
                        $type: ComplexType
                        hash: 12
                        attributes:
                        - hash: 13
                          ns: ""
                          name: type
                          defaultValue: object
                          fixed: object
                          contentType:
                            $type: StringType
                            hash: 9
                          required: true
                        name: /components/schemas/SoavirtConnection
                        compositor: true
                        compositorObj:
                          $type: AllCompositor
                          hash: 14
                          types:
                          - $type: ElementType
                            hash: 15
                            minOccurs: 0
                            localName: host
                            bodyType:
                              $type: ComplexType
                              hash: 7
                          - $type: ElementType
                            hash: 16
                            minOccurs: 0
                            localName: port
                            bodyType:
                              $type: ComplexType
                              hash: 17
                              attributes:
                              - hash: 18
                                ns: ""
                                name: type
                                defaultValue: number
                                fixed: number
                                contentType:
                                  $type: StringType
                                  hash: 9
                                required: true
                              content: true
                              contentObj:
                                $type: IntegerType
                                hash: 19
                              namespace: urn:parasoft:json
                              name: number
                              compositor: true
                              compositorObj:
                                $type: SequenceCompositor
                                hash: 20
                          - $type: ElementType
                            hash: 21
                            minOccurs: 0
                            localName: username
                            bodyType:
                              $type: ComplexType
                              hash: 7
                          - $type: ElementType
                            hash: 22
                            minOccurs: 0
                            localName: password
                            bodyType:
                              $type: ComplexType
                              hash: 7
                          - $type: ElementType
                            hash: 23
                            minOccurs: 0
                            localName: secure
                            bodyType:
                              $type: ComplexType
                              hash: 24
                              attributes:
                              - hash: 25
                                ns: ""
                                name: type
                                defaultValue: boolean
                                fixed: boolean
                                contentType:
                                  $type: StringType
                                  hash: 9
                                required: true
                              content: true
                              contentObj:
                                $type: BooleanType
                                hash: 26
                              namespace: urn:parasoft:json
                              name: boolean
                              compositor: true
                              compositorObj:
                                $type: SequenceCompositor
                                hash: 27
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                    xmlEncoding: 2
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
                      values:
                      - $type: ElementValue
                        replacedColumn: ""
                      - $type: ElementValue
                        replacedColumn: ""
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://localhost:40090/api/openapi.json
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          xmlBuilder: false
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/v1/sessions"
          transportProperties:
            manager:
              protocol: 1
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    customType: 1
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: POST
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
                showRequestHeaders: true
                showResponseHeaders: true
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: "{\"coverageUser\":\"\",\"soavirt\"\
                :{\"host\":\"\",\"port\":0,\"username\":\"\",\"password\":\"\",\"\
                secure\":false}}"
              type: application/json
          mode: Form JSON
          literalQuery:
            isPropertiesRef: true
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: v1
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: sessions
          resourceMethod:
            resourceId: /v1/sessions
            httpMethod: POST
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://localhost:40090/api
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
    - $type: TestSuite
      testLogic: true
      testID: 99
      enabled: true
      name: "/v1/sessions/{id}"
      profileMappingID: 3
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 100
        enabled: true
        name: "/v1/sessions/{id} - PUT"
        performanceGroup: 1
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: "/v1/sessions/{id} - PUT"
          formJson:
            builtFromSchema: true
            value:
              $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                localName: root
                bodyType:
                  $type: ComplexType
                  hash: 2
                  attributes:
                  - hash: 3
                    ns: ""
                    name: type
                    defaultValue: object
                    fixed: object
                    contentType:
                      $type: StringType
                      hash: 4
                    required: true
                  name: /components/schemas/ProxySessionPutRequest
                  compositor: true
                  compositorObj:
                    $type: AllCompositor
                    hash: 5
                    types:
                    - $type: ElementType
                      hash: 6
                      minOccurs: 0
                      localName: state
                      bodyType:
                        $type: ComplexType
                        hash: 7
                        attributes:
                        - hash: 8
                          ns: ""
                          name: type
                          defaultValue: string
                          fixed: string
                          contentType:
                            $type: StringType
                            hash: 9
                          required: true
                        content: true
                        contentObj:
                          $type: StringType
                          hash: 9
                        namespace: urn:parasoft:json
                        name: string
                        compositor: true
                        compositorObj:
                          $type: SequenceCompositor
                          hash: 10
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                    xmlEncoding: 2
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
                      values:
                      - $type: ElementValue
                        replacedColumn: ""
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://localhost:40090/api/openapi.json
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          xmlBuilder: false
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/v1/sessions/{id}"
          transportProperties:
            manager:
              protocol: 1
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    customType: 1
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: PUT
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
                showRequestHeaders: true
                showResponseHeaders: true
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: "{\"state\":\"\"}"
              type: application/json
          mode: Form JSON
          literalQuery:
            isPropertiesRef: true
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: v1
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: sessions
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: "{id}"
          constrainedPath:
            pathParameters:
            - $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                localName: id
                bodyType:
                  $type: StringType
                  hash: 2
              replacedColumn: ""
              values:
              - $type: StringValue
                replacedColumn: ""
                value: ""
                xmlEncoding: 2
          resourceMethod:
            resourceId: "/v1/sessions/{id}"
            httpMethod: PUT
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://localhost:40090/api
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
      - $type: RESTClientToolTest
        testLogic: true
        testID: 101
        enabled: true
        name: "/v1/sessions/{id} - DELETE"
        performanceGroup: 2
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: "/v1/sessions/{id} - DELETE"
          formJson:
            value:
              $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                localName: root
                bodyType:
                  $type: ComplexType
                  hash: 2
                  attributes:
                  - hash: 3
                    ns: ""
                    name: type
                    fixed: object
                    contentType:
                      $type: StringType
                      hash: 4
                    required: true
                  name: rootType
                  compositor: true
                  compositorObj:
                    $type: AllCompositor
                    hash: 5
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                    xmlEncoding: 2
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://localhost:40090/api/openapi.json
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/v1/sessions/{id}"
          transportProperties:
            manager:
              protocol: 1
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    customType: 1
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: DELETE
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    customType: 1
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: DELETE
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                keepAlive1_1:
                  bool: true
              - $type: NoneTransportProperties
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
                showRequestHeaders: true
                showResponseHeaders: true
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: ""
              type: application/json
            dataSource:
              columnName: TSTName
          mode: Literal
          literalQuery:
            isPropertiesRef: true
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: v1
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: sessions
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: "{id}"
          constrainedPath:
            pathParameters:
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :id
              replacedColumn: ""
              values:
              - $type: StringValue
                replacedColumn: ""
                value: c183cffc-19a0-4506-80b1-cc40235e7a77
                xmlEncoding: 2
          resourceMethod:
            resourceId: "/v1/sessions/{id}"
            httpMethod: DELETE
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://localhost:40090/api
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
    - $type: TestSuite
      testLogic: true
      testID: 102
      enabled: true
      name: "/v1/sessions/{id}/tsts"
      profileMappingID: 4
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 103
        enabled: true
        name: "/v1/sessions/{id}/tsts - POST"
        performanceGroup: 2
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: "/v1/sessions/{id}/tsts - POST"
          formJson:
            builtFromSchema: true
            value:
              $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                localName: root
                bodyType:
                  $type: ComplexType
                  hash: 2
                  attributes:
                  - hash: 3
                    ns: ""
                    name: type
                    defaultValue: object
                    fixed: object
                    contentType:
                      $type: StringType
                      hash: 4
                    required: true
                  name: /components/schemas/ProxyCreateTstRequest
                  compositor: true
                  compositorObj:
                    $type: AllCompositor
                    hash: 5
                    types:
                    - $type: ElementType
                      hash: 6
                      minOccurs: 0
                      localName: name
                      bodyType:
                        $type: ComplexType
                        hash: 7
                        attributes:
                        - hash: 8
                          ns: ""
                          name: type
                          defaultValue: string
                          fixed: string
                          contentType:
                            $type: StringType
                            hash: 9
                          required: true
                        content: true
                        contentObj:
                          $type: StringType
                          hash: 9
                        namespace: urn:parasoft:json
                        name: string
                        compositor: true
                        compositorObj:
                          $type: SequenceCompositor
                          hash: 10
                    - $type: ElementType
                      hash: 11
                      minOccurs: 0
                      localName: requirements
                      bodyType:
                        $type: ComplexType
                        hash: 12
                        attributes:
                        - hash: 13
                          ns: ""
                          name: type
                          defaultValue: array
                          fixed: array
                          contentType:
                            $type: StringType
                            hash: 9
                          required: true
                        name: /components/schemas/ProxyCreateTstRequest/properties/requirements
                        compositor: true
                        compositorObj:
                          $type: SequenceCompositor
                          hash: 14
                          types:
                          - $type: ElementType
                            hash: 15
                            minOccurs: 0
                            maxOccurs: -1
                            localName: item
                            bodyType:
                              $type: ComplexType
                              hash: 16
                              attributes:
                              - hash: 17
                                ns: ""
                                name: type
                                defaultValue: object
                                fixed: object
                                contentType:
                                  $type: StringType
                                  hash: 9
                                required: true
                              name: /components/schemas/Requirement
                              compositor: true
                              compositorObj:
                                $type: AllCompositor
                                hash: 18
                                types:
                                - $type: ElementType
                                  hash: 19
                                  minOccurs: 0
                                  localName: type
                                  bodyType:
                                    $type: ComplexType
                                    hash: 7
                                - $type: ElementType
                                  hash: 20
                                  minOccurs: 0
                                  localName: id
                                  bodyType:
                                    $type: ComplexType
                                    hash: 7
                                - $type: ElementType
                                  hash: 21
                                  minOccurs: 0
                                  localName: url
                                  bodyType:
                                    $type: ComplexType
                                    hash: 7
                    - $type: ElementType
                      hash: 22
                      minOccurs: 0
                      localName: notes
                      bodyType:
                        $type: ComplexType
                        hash: 7
                    - $type: ElementType
                      hash: 23
                      minOccurs: 0
                      localName: applicationType
                      bodyType:
                        $type: ComplexType
                        hash: 7
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                    xmlEncoding: 2
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
                      values:
                      - $type: ElementValue
                        replacedColumn: ""
                      - $type: ElementValue
                        replacedColumn: ""
                      - $type: ElementValue
                        replacedColumn: ""
                      - $type: ElementValue
                        replacedColumn: ""
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://localhost:40090/api/openapi.json
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          xmlBuilder: false
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/v1/sessions/{id}/tsts"
          transportProperties:
            manager:
              protocol: 1
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    customType: 1
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: POST
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
                showRequestHeaders: true
                showResponseHeaders: true
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: "{\"name\":\"\",\"requirements\":[{\"\
                type\":\"\",\"id\":\"\",\"url\":\"\"}],\"notes\":\"\",\"applicationType\"\
                :\"\"}"
              type: application/json
          mode: Form JSON
          literalQuery:
            isPropertiesRef: true
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: v1
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: sessions
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: "{id}"
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: tsts
          constrainedPath:
            pathParameters:
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :id
              replacedColumn: ""
              values:
              - $type: StringValue
                replacedColumn: ""
                value: ""
                xmlEncoding: 2
          resourceMethod:
            resourceId: "/v1/sessions/{id}/tsts"
            httpMethod: POST
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://localhost:40090/api
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
    - $type: TestSuite
      testLogic: true
      testID: 104
      enabled: true
      name: /v1/soavirt/status
      profileMappingID: 5
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 105
        enabled: true
        name: /v1/soavirt/status - POST
        performanceGroup: 3
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: /v1/soavirt/status - POST
          formJson:
            builtFromSchema: true
            value:
              $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                localName: root
                bodyType:
                  $type: ComplexType
                  hash: 2
                  attributes:
                  - hash: 3
                    ns: ""
                    name: type
                    defaultValue: object
                    fixed: object
                    contentType:
                      $type: StringType
                      hash: 4
                    required: true
                  name: /components/schemas/SoavirtStatusRequest
                  compositor: true
                  compositorObj:
                    $type: AllCompositor
                    hash: 5
                    types:
                    - $type: ElementType
                      hash: 6
                      minOccurs: 0
                      localName: soavirt
                      bodyType:
                        $type: ComplexType
                        hash: 7
                        attributes:
                        - hash: 8
                          ns: ""
                          name: type
                          defaultValue: object
                          fixed: object
                          contentType:
                            $type: StringType
                            hash: 9
                          required: true
                        name: /components/schemas/SoavirtConnection
                        compositor: true
                        compositorObj:
                          $type: AllCompositor
                          hash: 10
                          types:
                          - $type: ElementType
                            hash: 11
                            minOccurs: 0
                            localName: host
                            bodyType:
                              $type: ComplexType
                              hash: 12
                              attributes:
                              - hash: 13
                                ns: ""
                                name: type
                                defaultValue: string
                                fixed: string
                                contentType:
                                  $type: StringType
                                  hash: 9
                                required: true
                              content: true
                              contentObj:
                                $type: StringType
                                hash: 9
                              namespace: urn:parasoft:json
                              name: string
                              compositor: true
                              compositorObj:
                                $type: SequenceCompositor
                                hash: 14
                          - $type: ElementType
                            hash: 15
                            minOccurs: 0
                            localName: port
                            bodyType:
                              $type: ComplexType
                              hash: 16
                              attributes:
                              - hash: 17
                                ns: ""
                                name: type
                                defaultValue: number
                                fixed: number
                                contentType:
                                  $type: StringType
                                  hash: 9
                                required: true
                              content: true
                              contentObj:
                                $type: IntegerType
                                hash: 18
                              namespace: urn:parasoft:json
                              name: number
                              compositor: true
                              compositorObj:
                                $type: SequenceCompositor
                                hash: 19
                          - $type: ElementType
                            hash: 20
                            minOccurs: 0
                            localName: username
                            bodyType:
                              $type: ComplexType
                              hash: 12
                          - $type: ElementType
                            hash: 21
                            minOccurs: 0
                            localName: password
                            bodyType:
                              $type: ComplexType
                              hash: 12
                          - $type: ElementType
                            hash: 22
                            minOccurs: 0
                            localName: secure
                            bodyType:
                              $type: ComplexType
                              hash: 23
                              attributes:
                              - hash: 24
                                ns: ""
                                name: type
                                defaultValue: boolean
                                fixed: boolean
                                contentType:
                                  $type: StringType
                                  hash: 9
                                required: true
                              content: true
                              contentObj:
                                $type: BooleanType
                                hash: 25
                              namespace: urn:parasoft:json
                              name: boolean
                              compositor: true
                              compositorObj:
                                $type: SequenceCompositor
                                hash: 26
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                    xmlEncoding: 2
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
                      values:
                      - $type: ElementValue
                        replacedColumn: ""
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://localhost:40090/api/openapi.json
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          xmlBuilder: false
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/v1/soavirt/status"
          transportProperties:
            manager:
              protocol: 1
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    customType: 1
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: POST
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
                showRequestHeaders: true
                showResponseHeaders: true
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: "{\"soavirt\":{\"host\":\"\",\"port\"\
                :0,\"username\":\"\",\"password\":\"\",\"secure\":false}}"
              type: application/json
          mode: Form JSON
          literalQuery:
            isPropertiesRef: true
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: v1
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: soavirt
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: status
          resourceMethod:
            resourceId: /v1/soavirt/status
            httpMethod: POST
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://localhost:40090/api
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
    - $type: TestSuite
      testLogic: true
      testID: 106
      enabled: true
      name: /v1/status
      profileMappingID: 6
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 107
        enabled: true
        name: /v1/status - GET
        performanceGroup: 4
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: /v1/status - GET
          formJson:
            value:
              $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                localName: root
                bodyType:
                  $type: ComplexType
                  hash: 2
                  attributes:
                  - hash: 3
                    ns: ""
                    name: type
                    fixed: object
                    contentType:
                      $type: StringType
                      hash: 4
                    required: true
                  name: rootType
                  compositor: true
                  compositorObj:
                    $type: AllCompositor
                    hash: 5
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                    xmlEncoding: 2
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://localhost:40090/api/openapi.json
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          xmlBuilder: false
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/v1/status"
          transportProperties:
            manager:
              protocol: 1
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    customType: 1
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: GET
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
                showRequestHeaders: true
                showResponseHeaders: true
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: ""
              type: application/json
          mode: Literal
          literalQuery:
            isPropertiesRef: true
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: v1
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: status
          resourceMethod:
            resourceId: /v1/status
            httpMethod: GET
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://localhost:40090/api
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
  - $type: TestSuite
    testLogic: true
    testFlowLogic:
      condition: true
    testID: 2
    enabled: true
    name: /v1/sessions
    browserOptions:
      browserType:
        useDefault: false
        type:
          $type: CompositeBrowserType
          browserTypes:
          - $type: SingleBrowserType
            typeValue: 0
          - $type: SingleBrowserType
            typeValue: 3
          - $type: SingleBrowserType
            typeValue: 5
    profileMappingID: 2
    runMode: 1
    tests:
    - $type: RESTClientToolTest
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 3
      enabled: true
      name: /v1/sessions - GET
      performanceGroup: 0
      tool:
        $type: RESTClient
        iconName: RESTClient
        name: /v1/sessions - GET
        outputTools:
        - $type: DiffTool
          iconName: Diff
          name: "Diff control generated on Dec 15, 2021 8:28:15 PM."
          differs:
          - $type: BinaryDiffer
            source:
              optionsSource: 1
          - $type: TextDiffer
          - $type: XMLDifferNew
            formXml:
              formXML:
                rootNodeExists: true
                rootNode:
                  $type: XMLElementNode
                  xmlEncoding: 2
                  value: ""
                  name: NewElement
                  showAttributes: true
            hasSoapControlSource: true
            soapControlSource:
              $type: SoapDiffControlSource
          - $type: JSONDiffer
          source:
            controls:
            - keys:
              - ""
              - ""
              row:
                refs:
                - dataSourceName: ""
                last: false
            - "{\"sessions\":[]}"
          mode: 3
        formJson:
          value:
            $type: ElementValue
            writeType: true
            hasReference: true
            qnameAsString: :root
            replacedColumn: ""
            values:
            - $type: ComplexValue
              replacedColumn: ""
              attributes:
              - replacedColumn: ""
                value:
                  $type: StringValue
                  replacedColumn: ""
                  value: object
                  xmlEncoding: 2
                useValue: true
              compositorValue: true
              compositorValueObj:
                replacedColumn: ""
                values:
                  $type: CompositorValueSetCollectionSet
                  set:
                  - $type: CompositorValueSet
          elementTypeName: root
        hasServiceInfo: true
        serviceInfo:
          serviceDescriptor:
            $type: StandardServiceDescriptor
            location: http://localhost:40090/api/openapi.json
          serviceName: ""
          versionName: ""
        jsonBuilder:
          hasValue: true
          value:
            $type: JSONObjectValue
            nameIsNull: true
        schemaURL:
          MessagingClient_SchemaLocation: "${SWAGGER}"
        formInput:
          value:
            $type: ElementValue
            writeType: true
            hasReference: true
            qnameAsString: ":"
            replacedColumn: ""
            values:
            - $type: ComplexValue
              replacedColumn: ""
              compositorValue: true
              compositorValueObj:
                replacedColumn: ""
                values:
                  $type: CompositorValueSetCollectionSet
                  set:
                  - $type: CompositorValueSet
        jmsMessageOutputProvider:
          $type: JMSMessageOutputProvider
          jmsOutputProviderRequest:
            $type: JMSOutputProvider
            name: Request Object
            menuName: Object
          jmsOutputProviderResponse:
            $type: JMSOutputProvider
            name: Response Message Object
            menuName: Message Object
        validResponseRange:
          validResponseRange:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              validResponseRange: 200
        router:
          values:
          - $type: ScriptedValue
          fixedValue:
            $type: StringTestValue
            HTTPClient_Endpoint: "${BASEURL}/v1/sessions"
        transportProperties:
          manager:
            protocol: 1
            properties:
            - $type: HTTPClientHTTPProperties
              followRedirects:
                bool: true
              common:
                auth:
                  useDefault: false
                  customType: 1
                method:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: GET
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      values:
                      - $type: ScriptedValue
                      fixedValue:
                        $type: StringTestValue
                        value: application/json
              protocol: 1
              keepAlive1_1:
                bool: true
            - $type: HTTPClientHTTPProperties
              followRedirects:
                bool: true
              common:
                auth:
                  useDefault: false
                  customType: 1
                method:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: GET
              keepAlive1_1:
                bool: true
            - $type: NoneTransportProperties
          messageExchangePattern:
            inverted: true
        outputProviders:
          requestHeader:
            $type: HTTPNamedToolOutputProvider
            menuName: Transport Header
            name: Request Transport Header
          responseHeader:
            $type: HTTPNamedToolOutputProvider
            menuName: Transport Header
            name: Response Transport Header
          xmlRequestOutput:
            $type: NamedXMLToolOutputProvider
            menuName: Traffic
            name: Request Traffic
          trafficOutput:
            m_name: Traffic Stream
          objectOutput:
            $type: ObjectOutputProvider
            outputTools:
            - $type: TrafficViewer
              iconName: TrafficViewer
              name: Traffic Viewer
              showRequestHeaders: true
              showResponseHeaders: true
            name: Traffic Object
        literal:
          use: 1
          text:
            MessagingClient_LiteralMessage: ""
            type: application/json
        mode: Literal
        literalQuery:
          isPropertiesRef: true
        literalPath:
          pathElements:
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: v1
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: sessions
        resourceMethod:
          resourceId: /v1/sessions
          httpMethod: GET
        resourceMode: 3
        baseUrl:
          values:
          - $type: ScriptedValue
          - $type: WadlTestValue
            value: http://localhost:40090/api
          fixedValue:
            $type: StringTestValue
            value: "${BASEURL}"
    - $type: RESTClientToolTest
      testLogic: true
      testFlowLogic:
        condition: true
        dependencyLogic:
          index: 1
      testID: 4
      enabled: true
      name: /v1/sessions - POST
      performanceGroup: 1
      tool:
        $type: RESTClient
        iconName: RESTClient
        name: /v1/sessions - POST
        outputTools:
        - $type: GenericDataBank
          iconName: XMLDataBank
          name: JSON Data Bank
          wrappedTool:
            $type: XMLtoDataSource
            iconName: XMLDataBank
            name: XML Data Bank
            selectedXPaths:
            - elementOption: 1
              contentOption: 1
              XMLDataBank_ExtractXPath: "/root/proxySettings[1]/port[1]/text()"
              mode: 1
            - elementOption: 1
              contentOption: 1
              XMLDataBank_ExtractXPath: "/root/id[1]/text()"
              mode: 1
            canonicalizeOutput: true
            xmlMessage: true
            virtualDSCreator:
              writableColumns:
              - customName: "Test 2: port"
              - customName: "Test 2: webProxyId"
          conversionStrategy:
            dataFormatName: JSON
            conversionStrategyId: JSON
            conversionStrategyClassName: com.parasoft.xml.convert.json.JsonConversionStrategy
        formJson:
          builtFromSchema: true
          value:
            $type: ElementValue
            writeType: true
            type:
              $type: ElementType
              hash: 1
              localName: root
              bodyType:
                $type: ComplexType
                hash: 2
                attributes:
                - hash: 3
                  ns: ""
                  name: type
                  defaultValue: object
                  fixed: object
                  contentType:
                    $type: StringType
                    hash: 4
                  required: true
                name: /components/schemas/ProxySessionPostRequest
                compositor: true
                compositorObj:
                  $type: AllCompositor
                  hash: 5
                  types:
                  - $type: ElementType
                    hash: 6
                    minOccurs: 0
                    localName: coverageUser
                    bodyType:
                      $type: ComplexType
                      hash: 7
                      attributes:
                      - hash: 8
                        ns: ""
                        name: type
                        defaultValue: string
                        fixed: string
                        contentType:
                          $type: StringType
                          hash: 9
                        required: true
                      content: true
                      contentObj:
                        $type: StringType
                        hash: 9
                      namespace: urn:parasoft:json
                      name: string
                      compositor: true
                      compositorObj:
                        $type: SequenceCompositor
                        hash: 10
                  - $type: ElementType
                    hash: 11
                    minOccurs: 0
                    localName: soavirt
                    bodyType:
                      $type: ComplexType
                      hash: 12
                      attributes:
                      - hash: 13
                        ns: ""
                        name: type
                        defaultValue: object
                        fixed: object
                        contentType:
                          $type: StringType
                          hash: 9
                        required: true
                      name: /components/schemas/SoavirtConnection
                      compositor: true
                      compositorObj:
                        $type: AllCompositor
                        hash: 14
                        types:
                        - $type: ElementType
                          hash: 15
                          minOccurs: 0
                          localName: host
                          bodyType:
                            $type: ComplexType
                            hash: 7
                        - $type: ElementType
                          hash: 16
                          minOccurs: 0
                          localName: port
                          bodyType:
                            $type: ComplexType
                            hash: 17
                            attributes:
                            - hash: 18
                              ns: ""
                              name: type
                              defaultValue: number
                              fixed: number
                              contentType:
                                $type: StringType
                                hash: 9
                              required: true
                            content: true
                            contentObj:
                              $type: IntegerType
                              hash: 19
                            namespace: urn:parasoft:json
                            name: number
                            compositor: true
                            compositorObj:
                              $type: SequenceCompositor
                              hash: 20
                        - $type: ElementType
                          hash: 21
                          minOccurs: 0
                          localName: username
                          bodyType:
                            $type: ComplexType
                            hash: 7
                        - $type: ElementType
                          hash: 22
                          minOccurs: 0
                          localName: password
                          bodyType:
                            $type: ComplexType
                            hash: 7
                        - $type: ElementType
                          hash: 23
                          minOccurs: 0
                          localName: secure
                          bodyType:
                            $type: ComplexType
                            hash: 24
                            attributes:
                            - hash: 25
                              ns: ""
                              name: type
                              defaultValue: boolean
                              fixed: boolean
                              contentType:
                                $type: StringType
                                hash: 9
                              required: true
                            content: true
                            contentObj:
                              $type: BooleanType
                              hash: 26
                            namespace: urn:parasoft:json
                            name: boolean
                            compositor: true
                            compositorObj:
                              $type: SequenceCompositor
                              hash: 27
            replacedColumn: ""
            values:
            - $type: ComplexValue
              replacedColumn: ""
              attributes:
              - replacedColumn: ""
                value:
                  $type: StringValue
                  replacedColumn: ""
                  value: object
                  xmlEncoding: 2
                useValue: true
              compositorValue: true
              compositorValueObj:
                replacedColumn: ""
                values:
                  $type: CompositorValueSetCollectionSet
                  set:
                  - $type: CompositorValueSet
                    values:
                    - $type: ElementValue
                      replacedColumn: ""
                    - $type: ElementValue
                      replacedColumn: ""
                      values:
                      - $type: ComplexValue
                        replacedColumn: ""
                        allowArrayExclude: true
                        attributes:
                        - replacedColumn: ""
                          value:
                            $type: StringValue
                            replacedColumn: ""
                            value: object
                            xmlEncoding: 2
                          useValue: true
                        compositorValue: true
                        compositorValueObj:
                          replacedColumn: ""
                          values:
                            $type: CompositorValueSetCollectionSet
                            set:
                            - $type: CompositorValueSet
                              values:
                              - $type: ElementValue
                                replacedColumn: ""
                                values:
                                - $type: ComplexValue
                                  replacedColumn: ""
                                  allowArrayExclude: true
                                  attributes:
                                  - replacedColumn: ""
                                    value:
                                      $type: StringValue
                                      replacedColumn: ""
                                      value: string
                                      xmlEncoding: 2
                                    useValue: true
                                  contentValue: true
                                  contentValueObj:
                                    $type: StringValue
                                    replacedColumn: ""
                                    value: localhost
                                    xmlEncoding: 2
                                  compositorValue: true
                                  compositorValueObj:
                                    replacedColumn: ""
                                    values:
                                      $type: CompositorValueSetCollectionSet
                                      set:
                                      - $type: CompositorValueSet
                              - $type: ElementValue
                                replacedColumn: ""
                                values:
                                - $type: ComplexValue
                                  replacedColumn: ""
                                  allowArrayExclude: true
                                  attributes:
                                  - replacedColumn: ""
                                    value:
                                      $type: StringValue
                                      replacedColumn: ""
                                      value: number
                                      xmlEncoding: 2
                                    useValue: true
                                  contentValue: true
                                  contentValueObj:
                                    $type: IntegerValue
                                    replacedColumn: ""
                                    value: 9080
                                  compositorValue: true
                                  compositorValueObj:
                                    replacedColumn: ""
                                    values:
                                      $type: CompositorValueSetCollectionSet
                                      set:
                                      - $type: CompositorValueSet
                              - $type: ElementValue
                                replacedColumn: ""
                              - $type: ElementValue
                                replacedColumn: ""
                              - $type: ElementValue
                                replacedColumn: ""
                                values:
                                - $type: ComplexValue
                                  replacedColumn: ""
                                  allowArrayExclude: true
                                  attributes:
                                  - replacedColumn: ""
                                    value:
                                      $type: StringValue
                                      replacedColumn: ""
                                      value: boolean
                                      xmlEncoding: 2
                                    useValue: true
                                  contentValue: true
                                  contentValueObj:
                                    $type: BooleanValue
                                    replacedColumn: ""
                                    value: "false"
                                  compositorValue: true
                                  compositorValueObj:
                                    replacedColumn: ""
                                    values:
                                      $type: CompositorValueSetCollectionSet
                                      set:
                                      - $type: CompositorValueSet
          elementTypeName: root
        hasServiceInfo: true
        serviceInfo:
          serviceDescriptor:
            $type: StandardServiceDescriptor
            location: http://localhost:40090/api/openapi.json
          serviceName: ""
          versionName: ""
        jsonBuilder:
          hasValue: true
          value:
            $type: JSONObjectValue
            nameIsNull: true
        schemaURL:
          MessagingClient_SchemaLocation: "${SWAGGER}"
        formInput:
          value:
            $type: ElementValue
            writeType: true
            hasReference: true
            qnameAsString: ":"
            replacedColumn: ""
            values:
            - $type: ComplexValue
              replacedColumn: ""
              compositorValue: true
              compositorValueObj:
                replacedColumn: ""
                values:
                  $type: CompositorValueSetCollectionSet
                  set:
                  - $type: CompositorValueSet
        jmsMessageOutputProvider:
          $type: JMSMessageOutputProvider
          jmsOutputProviderRequest:
            $type: JMSOutputProvider
            name: Request Object
            menuName: Object
          jmsOutputProviderResponse:
            $type: JMSOutputProvider
            name: Response Message Object
            menuName: Message Object
        validResponseRange:
          validResponseRange:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              validResponseRange: 200
        router:
          values:
          - $type: ScriptedValue
          fixedValue:
            $type: StringTestValue
            HTTPClient_Endpoint: "${BASEURL}/v1/sessions"
        transportProperties:
          manager:
            protocol: 1
            properties:
            - $type: HTTPClientHTTPProperties
              followRedirects:
                bool: true
              common:
                auth:
                  useDefault: false
                  customType: 1
                method:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: POST
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      values:
                      - $type: ScriptedValue
                      fixedValue:
                        $type: StringTestValue
                        value: application/json
              protocol: 1
              keepAlive1_1:
                bool: true
            - $type: HTTPClientHTTPProperties
              followRedirects:
                bool: true
              common:
                auth:
                  useDefault: false
                  customType: 1
                method:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: POST
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      values:
                      - $type: ScriptedValue
                      fixedValue:
                        $type: StringTestValue
                        value: application/json
              keepAlive1_1:
                bool: true
            - $type: NoneTransportProperties
          messageExchangePattern:
            inverted: true
        outputProviders:
          requestHeader:
            $type: HTTPNamedToolOutputProvider
            menuName: Transport Header
            name: Request Transport Header
          responseHeader:
            $type: HTTPNamedToolOutputProvider
            menuName: Transport Header
            name: Response Transport Header
          xmlRequestOutput:
            $type: NamedXMLToolOutputProvider
            menuName: Traffic
            name: Request Traffic
          trafficOutput:
            m_name: Traffic Stream
          objectOutput:
            $type: ObjectOutputProvider
            outputTools:
            - $type: TrafficViewer
              iconName: TrafficViewer
              name: Traffic Viewer
              showRequestHeaders: true
              showResponseHeaders: true
            name: Traffic Object
        literal:
          use: 1
          text:
            MessagingClient_LiteralMessage: "{\"coverageUser\":\"\",\"soavirt\":{\"\
              host\":\"\",\"port\":0,\"username\":\"\",\"password\":\"\",\"secure\"\
              :false}}"
            type: application/json
        mode: Form JSON
        literalQuery:
          isPropertiesRef: true
        literalPath:
          pathElements:
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: v1
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: sessions
        resourceMethod:
          resourceId: /v1/sessions
          httpMethod: POST
        resourceMode: 3
        baseUrl:
          values:
          - $type: ScriptedValue
          - $type: WadlTestValue
            value: http://localhost:40090/api
          fixedValue:
            $type: StringTestValue
            value: "${BASEURL}"
    - $type: ToolTest
      testLogic: true
      testFlowLogic:
        condition: true
        dependencyLogic:
          index: 1
      testID: 5
      enabled: true
      name: Extension Tool
      tool:
        $type: MethodTool
        iconName: Method
        name: Set Chrome Proxy
        method:
          hasCode: true
          code:
            $type: ScriptCode
            input:
              useText: true
              textInput:
                $type: ScriptingTextInput
                text: "public setProxy(input,context) {\r\n\tString port = context.getValue(\"\
                  Generated Data Source\",\"Test 2: port\");\r\n\tSystem.setProperty(\"\
                  com.parasoft.browser.BrowserPropertyOptions.CHROME_ARGUMENTS\",\
                  \ \"--proxy-server=http://localhost:\"+port);\r\n}"
          hasMethodId: true
          methodId:
            $type: ScriptMethodIdentifier
            functionName: setProxy
            arguments:
            - java.lang.Object
            - java.lang.Object
      writeInput: true
      inputType: InputUsable
      input:
        use: 1
        text:
          text: ""
          type: text/plain
        dataSource:
          columnName: "Test 2: port"
  - $type: TestSuiteReference
    fileReference: true
    fileReferenceObj:
      path: reference_tests\Parabank_UI_CreateAccount.tst
    testLogic: true
    testFlowLogic:
      condition: true
      dependencyLogic:
        index: 2
    isEnabled: true
  - $type: TestSuite
    testLogic: true
    testFlowLogic:
      condition: true
      dependencyLogic:
        index: 2
    testID: 48
    enabled: true
    name: "/v1/sessions/{id}"
    browserOptions:
      browserType:
        useDefault: false
        type:
          $type: CompositeBrowserType
          browserTypes:
          - $type: SingleBrowserType
            typeValue: 0
          - $type: SingleBrowserType
            typeValue: 3
          - $type: SingleBrowserType
            typeValue: 5
    profileMappingID: 3
    runMode: 1
    tests:
    - $type: RESTClientToolTest
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 49
      enabled: true
      name: "/v1/sessions/{id} - PUT"
      performanceGroup: 1
      tool:
        $type: RESTClient
        iconName: RESTClient
        name: "/v1/sessions/{id} - PUT"
        formJson:
          builtFromSchema: true
          value:
            $type: ElementValue
            writeType: true
            type:
              $type: ElementType
              hash: 1
              localName: root
              bodyType:
                $type: ComplexType
                hash: 2
                attributes:
                - hash: 3
                  ns: ""
                  name: type
                  defaultValue: object
                  fixed: object
                  contentType:
                    $type: StringType
                    hash: 4
                  required: true
                name: /components/schemas/ProxySessionPutRequest
                compositor: true
                compositorObj:
                  $type: AllCompositor
                  hash: 5
                  types:
                  - $type: ElementType
                    hash: 6
                    minOccurs: 0
                    localName: state
                    bodyType:
                      $type: ComplexType
                      hash: 7
                      attributes:
                      - hash: 8
                        ns: ""
                        name: type
                        defaultValue: string
                        fixed: string
                        contentType:
                          $type: StringType
                          hash: 4
                        required: true
                      content: true
                      contentObj:
                        $type: StringType
                        hash: 9
                      namespace: urn:parasoft:json
                      name: string
                      compositor: true
                      compositorObj:
                        $type: SequenceCompositor
                        hash: 10
            replacedColumn: ""
            values:
            - $type: ComplexValue
              replacedColumn: ""
              attributes:
              - replacedColumn: ""
                value:
                  $type: StringValue
                  replacedColumn: ""
                  value: object
                  xmlEncoding: 2
                useValue: true
              compositorValue: true
              compositorValueObj:
                replacedColumn: ""
                values:
                  $type: CompositorValueSetCollectionSet
                  set:
                  - $type: CompositorValueSet
                    values:
                    - $type: ElementValue
                      replacedColumn: ""
                      values:
                      - $type: ComplexValue
                        replacedColumn: ""
                        allowArrayExclude: true
                        attributes:
                        - replacedColumn: ""
                          value:
                            $type: StringValue
                            replacedColumn: ""
                            value: string
                            xmlEncoding: 2
                          useValue: true
                        contentValue: true
                        contentValueObj:
                          $type: StringValue
                          replacedColumn: ""
                          value: stopped
                          xmlEncoding: 2
                        compositorValue: true
                        compositorValueObj:
                          replacedColumn: ""
                          values:
                            $type: CompositorValueSetCollectionSet
                            set:
                            - $type: CompositorValueSet
          elementTypeName: root
        hasServiceInfo: true
        serviceInfo:
          serviceDescriptor:
            $type: StandardServiceDescriptor
            location: http://localhost:40090/api/openapi.json
          serviceName: ""
          versionName: ""
        jsonBuilder:
          hasValue: true
          value:
            $type: JSONObjectValue
            nameIsNull: true
        schemaURL:
          MessagingClient_SchemaLocation: "${SWAGGER}"
        formInput:
          value:
            $type: ElementValue
            writeType: true
            hasReference: true
            qnameAsString: ":"
            replacedColumn: ""
            values:
            - $type: ComplexValue
              replacedColumn: ""
              compositorValue: true
              compositorValueObj:
                replacedColumn: ""
                values:
                  $type: CompositorValueSetCollectionSet
                  set:
                  - $type: CompositorValueSet
        jmsMessageOutputProvider:
          $type: JMSMessageOutputProvider
          jmsOutputProviderRequest:
            $type: JMSOutputProvider
            name: Request Object
            menuName: Object
          jmsOutputProviderResponse:
            $type: JMSOutputProvider
            name: Response Message Object
            menuName: Message Object
        validResponseRange:
          validResponseRange:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              validResponseRange: 200
        router:
          values:
          - $type: ScriptedValue
          fixedValue:
            $type: StringTestValue
            HTTPClient_Endpoint: "${BASEURL}/v1/sessions/{id}"
        transportProperties:
          manager:
            protocol: 1
            properties:
            - $type: HTTPClientHTTPProperties
              followRedirects:
                bool: true
              common:
                auth:
                  useDefault: false
                  customType: 1
                method:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: PUT
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      values:
                      - $type: ScriptedValue
                      fixedValue:
                        $type: StringTestValue
                        value: application/json
              protocol: 1
              keepAlive1_1:
                bool: true
            - $type: HTTPClientHTTPProperties
              followRedirects:
                bool: true
              common:
                auth:
                  useDefault: false
                  customType: 1
                method:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: PUT
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      values:
                      - $type: ScriptedValue
                      fixedValue:
                        $type: StringTestValue
                        value: application/json
              keepAlive1_1:
                bool: true
            - $type: NoneTransportProperties
          messageExchangePattern:
            inverted: true
        outputProviders:
          requestHeader:
            $type: HTTPNamedToolOutputProvider
            menuName: Transport Header
            name: Request Transport Header
          responseHeader:
            $type: HTTPNamedToolOutputProvider
            menuName: Transport Header
            name: Response Transport Header
          xmlRequestOutput:
            $type: NamedXMLToolOutputProvider
            menuName: Traffic
            name: Request Traffic
          trafficOutput:
            m_name: Traffic Stream
          objectOutput:
            $type: ObjectOutputProvider
            outputTools:
            - $type: TrafficViewer
              iconName: TrafficViewer
              name: Traffic Viewer
              showRequestHeaders: true
              showResponseHeaders: true
            name: Traffic Object
        literal:
          use: 1
          text:
            MessagingClient_LiteralMessage: "{\"state\":\"\"}"
            type: application/json
        mode: Form JSON
        literalQuery:
          isPropertiesRef: true
        literalPath:
          pathElements:
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: v1
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: sessions
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: "{id}"
        constrainedPath:
          pathParameters:
          - $type: ElementValue
            writeType: true
            hasReference: true
            qnameAsString: :id
            replacedColumn: ""
            values:
            - $type: StringValue
              replacedColumn: ""
              mode: 3
              columnName: "Test 2: webProxyId"
              value: ""
              xmlEncoding: 2
        resourceMethod:
          resourceId: "/v1/sessions/{id}"
          httpMethod: PUT
        resourceMode: 3
        baseUrl:
          values:
          - $type: ScriptedValue
          - $type: WadlTestValue
            value: http://localhost:40090/api
          fixedValue:
            $type: StringTestValue
            value: "${BASEURL}"
    - $type: RESTClientToolTest
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 50
      enabled: true
      name: "/v1/sessions/{id}/tsts - POST"
      performanceGroup: 2
      tool:
        $type: RESTClient
        iconName: RESTClient
        name: "/v1/sessions/{id}/tsts - POST"
        formJson:
          builtFromSchema: true
          value:
            $type: ElementValue
            writeType: true
            type:
              $type: ElementType
              hash: 1
              localName: root
              bodyType:
                $type: ComplexType
                hash: 2
                attributes:
                - hash: 3
                  ns: ""
                  name: type
                  defaultValue: object
                  fixed: object
                  contentType:
                    $type: StringType
                    hash: 4
                  required: true
                name: /components/schemas/ProxyCreateTstRequest
                compositor: true
                compositorObj:
                  $type: AllCompositor
                  hash: 5
                  types:
                  - $type: ElementType
                    hash: 6
                    minOccurs: 0
                    localName: name
                    bodyType:
                      $type: ComplexType
                      hash: 7
                      attributes:
                      - hash: 8
                        ns: ""
                        name: type
                        defaultValue: string
                        fixed: string
                        contentType:
                          $type: StringType
                          hash: 4
                        required: true
                      content: true
                      contentObj:
                        $type: StringType
                        hash: 9
                      namespace: urn:parasoft:json
                      name: string
                      compositor: true
                      compositorObj:
                        $type: SequenceCompositor
                        hash: 10
                  - $type: ElementType
                    hash: 11
                    minOccurs: 0
                    localName: requirements
                    bodyType:
                      $type: ComplexType
                      hash: 12
                      attributes:
                      - hash: 13
                        ns: ""
                        name: type
                        defaultValue: array
                        fixed: array
                        contentType:
                          $type: StringType
                          hash: 9
                        required: true
                      name: /components/schemas/ProxyCreateTstRequest/properties/requirements
                      compositor: true
                      compositorObj:
                        $type: SequenceCompositor
                        hash: 14
                        types:
                        - $type: ElementType
                          hash: 15
                          minOccurs: 0
                          maxOccurs: -1
                          localName: item
                          bodyType:
                            $type: ComplexType
                            hash: 16
                            attributes:
                            - hash: 17
                              ns: ""
                              name: type
                              defaultValue: object
                              fixed: object
                              contentType:
                                $type: StringType
                                hash: 9
                              required: true
                            name: /components/schemas/Requirement
                            compositor: true
                            compositorObj:
                              $type: AllCompositor
                              hash: 18
                              types:
                              - $type: ElementType
                                hash: 19
                                minOccurs: 0
                                localName: type
                                bodyType:
                                  $type: ComplexType
                                  hash: 7
                              - $type: ElementType
                                hash: 20
                                minOccurs: 0
                                localName: id
                                bodyType:
                                  $type: ComplexType
                                  hash: 7
                              - $type: ElementType
                                hash: 21
                                minOccurs: 0
                                localName: url
                                bodyType:
                                  $type: ComplexType
                                  hash: 7
                  - $type: ElementType
                    hash: 22
                    minOccurs: 0
                    localName: notes
                    bodyType:
                      $type: ComplexType
                      hash: 7
                  - $type: ElementType
                    hash: 23
                    minOccurs: 0
                    localName: applicationType
                    bodyType:
                      $type: ComplexType
                      hash: 7
            replacedColumn: ""
            values:
            - $type: ComplexValue
              replacedColumn: ""
              attributes:
              - replacedColumn: ""
                value:
                  $type: StringValue
                  replacedColumn: ""
                  value: object
                  xmlEncoding: 2
                useValue: true
              compositorValue: true
              compositorValueObj:
                replacedColumn: ""
                values:
                  $type: CompositorValueSetCollectionSet
                  set:
                  - $type: CompositorValueSet
                    values:
                    - $type: ElementValue
                      replacedColumn: ""
                      values:
                      - $type: ComplexValue
                        replacedColumn: ""
                        allowArrayExclude: true
                        attributes:
                        - replacedColumn: ""
                          value:
                            $type: StringValue
                            replacedColumn: ""
                            value: string
                            xmlEncoding: 2
                          useValue: true
                        contentValue: true
                        contentValueObj:
                          $type: StringValue
                          replacedColumn: ""
                          mode: 3
                          columnName: TSTName
                          value: Parabank-CreateAccount
                          xmlEncoding: 2
                        compositorValue: true
                        compositorValueObj:
                          replacedColumn: ""
                          values:
                            $type: CompositorValueSetCollectionSet
                            set:
                            - $type: CompositorValueSet
                    - $type: ElementValue
                      replacedColumn: ""
                    - $type: ElementValue
                      replacedColumn: ""
                    - $type: ElementValue
                      replacedColumn: ""
          elementTypeName: root
        hasServiceInfo: true
        serviceInfo:
          serviceDescriptor:
            $type: StandardServiceDescriptor
            location: http://localhost:40090/api/openapi.json
          serviceName: ""
          versionName: ""
        jsonBuilder:
          hasValue: true
          value:
            $type: JSONObjectValue
            nameIsNull: true
        schemaURL:
          MessagingClient_SchemaLocation: "${SWAGGER}"
        formInput:
          value:
            $type: ElementValue
            writeType: true
            hasReference: true
            qnameAsString: ":"
            replacedColumn: ""
            values:
            - $type: ComplexValue
              replacedColumn: ""
              compositorValue: true
              compositorValueObj:
                replacedColumn: ""
                values:
                  $type: CompositorValueSetCollectionSet
                  set:
                  - $type: CompositorValueSet
        jmsMessageOutputProvider:
          $type: JMSMessageOutputProvider
          jmsOutputProviderRequest:
            $type: JMSOutputProvider
            name: Request Object
            menuName: Object
          jmsOutputProviderResponse:
            $type: JMSOutputProvider
            name: Response Message Object
            menuName: Message Object
        validResponseRange:
          validResponseRange:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              validResponseRange: 200
        router:
          values:
          - $type: ScriptedValue
          fixedValue:
            $type: StringTestValue
            HTTPClient_Endpoint: "${BASEURL}/v1/sessions/{id}/tsts"
        transportProperties:
          manager:
            protocol: 1
            properties:
            - $type: HTTPClientHTTPProperties
              followRedirects:
                bool: true
              common:
                auth:
                  useDefault: false
                  customType: 1
                method:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: POST
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      values:
                      - $type: ScriptedValue
                      fixedValue:
                        $type: StringTestValue
                        value: application/json
              protocol: 1
              keepAlive1_1:
                bool: true
            - $type: HTTPClientHTTPProperties
              followRedirects:
                bool: true
              common:
                auth:
                  useDefault: false
                  customType: 1
                method:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: POST
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      values:
                      - $type: ScriptedValue
                      fixedValue:
                        $type: StringTestValue
                        value: application/json
              keepAlive1_1:
                bool: true
            - $type: NoneTransportProperties
          messageExchangePattern:
            inverted: true
        outputProviders:
          requestHeader:
            $type: HTTPNamedToolOutputProvider
            menuName: Transport Header
            name: Request Transport Header
          responseHeader:
            $type: HTTPNamedToolOutputProvider
            menuName: Transport Header
            name: Response Transport Header
          xmlRequestOutput:
            $type: NamedXMLToolOutputProvider
            menuName: Traffic
            name: Request Traffic
          trafficOutput:
            m_name: Traffic Stream
          objectOutput:
            $type: ObjectOutputProvider
            outputTools:
            - $type: TrafficViewer
              iconName: TrafficViewer
              name: Traffic Viewer
              showRequestHeaders: true
              showResponseHeaders: true
            name: Traffic Object
        literal:
          use: 1
          text:
            MessagingClient_LiteralMessage: "{\"name\":\"\",\"requirements\":[{\"\
              type\":\"\",\"id\":\"\",\"url\":\"\"}],\"notes\":\"\",\"applicationType\"\
              :\"\"}"
            type: application/json
        mode: Form JSON
        literalQuery:
          isPropertiesRef: true
        literalPath:
          pathElements:
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: v1
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: sessions
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: "{id}"
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: tsts
        constrainedPath:
          pathParameters:
          - $type: ElementValue
            writeType: true
            hasReference: true
            qnameAsString: :id
            replacedColumn: ""
            values:
            - $type: StringValue
              replacedColumn: ""
              mode: 3
              columnName: "Test 2: webProxyId"
              value: ""
              xmlEncoding: 2
        resourceMethod:
          resourceId: "/v1/sessions/{id}/tsts"
          httpMethod: POST
        resourceMode: 3
        baseUrl:
          values:
          - $type: ScriptedValue
          - $type: WadlTestValue
            value: http://localhost:40090/api
          fixedValue:
            $type: StringTestValue
            value: "${BASEURL}"
    - $type: RESTClientToolTest
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 51
      enabled: true
      name: "/v1/sessions/{id} - DELETE"
      performanceGroup: 2
      tool:
        $type: RESTClient
        iconName: RESTClient
        name: "/v1/sessions/{id} - DELETE"
        formJson:
          value:
            $type: ElementValue
            writeType: true
            type:
              $type: ElementType
              hash: 1
              localName: root
              bodyType:
                $type: ComplexType
                hash: 2
                attributes:
                - hash: 3
                  ns: ""
                  name: type
                  fixed: object
                  contentType:
                    $type: StringType
                    hash: 4
                  required: true
                name: rootType
                compositor: true
                compositorObj:
                  $type: AllCompositor
                  hash: 5
            replacedColumn: ""
            values:
            - $type: ComplexValue
              replacedColumn: ""
              attributes:
              - replacedColumn: ""
                value:
                  $type: StringValue
                  replacedColumn: ""
                  value: object
                  xmlEncoding: 2
                useValue: true
              compositorValue: true
              compositorValueObj:
                replacedColumn: ""
                values:
                  $type: CompositorValueSetCollectionSet
                  set:
                  - $type: CompositorValueSet
          elementTypeName: root
        hasServiceInfo: true
        serviceInfo:
          serviceDescriptor:
            $type: StandardServiceDescriptor
            location: http://localhost:40090/api/openapi.json
          serviceName: ""
          versionName: ""
        jsonBuilder:
          hasValue: true
          value:
            $type: JSONObjectValue
            nameIsNull: true
        schemaURL:
          MessagingClient_SchemaLocation: "${SWAGGER}"
        formInput:
          value:
            $type: ElementValue
            writeType: true
            hasReference: true
            qnameAsString: ":"
            replacedColumn: ""
            values:
            - $type: ComplexValue
              replacedColumn: ""
              compositorValue: true
              compositorValueObj:
                replacedColumn: ""
                values:
                  $type: CompositorValueSetCollectionSet
                  set:
                  - $type: CompositorValueSet
        jmsMessageOutputProvider:
          $type: JMSMessageOutputProvider
          jmsOutputProviderRequest:
            $type: JMSOutputProvider
            name: Request Object
            menuName: Object
          jmsOutputProviderResponse:
            $type: JMSOutputProvider
            name: Response Message Object
            menuName: Message Object
        validResponseRange:
          validResponseRange:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              validResponseRange: 200
        router:
          values:
          - $type: ScriptedValue
          fixedValue:
            $type: StringTestValue
            HTTPClient_Endpoint: "${BASEURL}/v1/sessions/{id}"
        transportProperties:
          manager:
            protocol: 1
            properties:
            - $type: HTTPClientHTTPProperties
              followRedirects:
                bool: true
              common:
                auth:
                  useDefault: false
                  customType: 1
                method:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: DELETE
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      values:
                      - $type: ScriptedValue
                      fixedValue:
                        $type: StringTestValue
                        value: application/json
              protocol: 1
              keepAlive1_1:
                bool: true
            - $type: HTTPClientHTTPProperties
              followRedirects:
                bool: true
              common:
                auth:
                  useDefault: false
                  customType: 1
                method:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: DELETE
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      values:
                      - $type: ScriptedValue
                      fixedValue:
                        $type: StringTestValue
                        value: application/json
              keepAlive1_1:
                bool: true
            - $type: NoneTransportProperties
          messageExchangePattern:
            inverted: true
        outputProviders:
          requestHeader:
            $type: HTTPNamedToolOutputProvider
            menuName: Transport Header
            name: Request Transport Header
          responseHeader:
            $type: HTTPNamedToolOutputProvider
            menuName: Transport Header
            name: Response Transport Header
          xmlRequestOutput:
            $type: NamedXMLToolOutputProvider
            menuName: Traffic
            name: Request Traffic
          trafficOutput:
            m_name: Traffic Stream
          objectOutput:
            $type: ObjectOutputProvider
            outputTools:
            - $type: TrafficViewer
              iconName: TrafficViewer
              name: Traffic Viewer
              showRequestHeaders: true
              showResponseHeaders: true
            name: Traffic Object
        literal:
          use: 1
          text:
            MessagingClient_LiteralMessage: ""
            type: application/json
          dataSource:
            columnName: "Test 2: port"
        mode: Literal
        literalQuery:
          isPropertiesRef: true
        literalPath:
          pathElements:
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: v1
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: sessions
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: "{id}"
        constrainedPath:
          pathParameters:
          - $type: ElementValue
            writeType: true
            hasReference: true
            qnameAsString: :id
            replacedColumn: ""
            values:
            - $type: StringValue
              replacedColumn: ""
              mode: 3
              columnName: "Test 2: webProxyId"
              value: ""
              xmlEncoding: 2
        resourceMethod:
          resourceId: "/v1/sessions/{id}"
          httpMethod: DELETE
        resourceMode: 3
        baseUrl:
          values:
          - $type: ScriptedValue
          - $type: WadlTestValue
            value: http://localhost:40090/api
          fixedValue:
            $type: StringTestValue
            value: "${BASEURL}"
    - $type: ToolTest
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 52
      enabled: true
      name: Extension Tool
      tool:
        $type: MethodTool
        iconName: Method
        name: Clear Chrome Proxy
        method:
          hasCode: true
          code:
            $type: ScriptCode
            input:
              useText: true
              textInput:
                $type: ScriptingTextInput
                text: "public setProxy(input,context) {\r\n\tSystem.clearProperty(\"\
                  com.parasoft.browser.BrowserPropertyOptions.CHROME_ARGUMENTS\");\r\
                  \n}"
          hasMethodId: true
          methodId:
            $type: ScriptMethodIdentifier
            functionName: setProxy
            arguments:
            - java.lang.Object
            - java.lang.Object
      writeInput: true
      inputType: InputUsable
      input:
        use: 1
        text:
          text: ""
          type: text/plain
        dataSource:
          columnName: "Test 2: port"
