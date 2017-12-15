all: virtualGraph_test

xor_test: obj/xor_test.o obj/Graph.o obj/VirtualGraph.o obj/ComputeGraph.o obj/Node.o obj/VirtualNode.o obj/OperatorNode.o obj/Input.o obj/Add.o obj/Mult.o obj/Minus.o obj/SquareSum.o obj/Sigmoid.o obj/Parameter.o obj/Tensor.o
	g++ -std=c++11 obj/xor_test.o obj/Graph.o obj/VirtualGraph.o obj/ComputeGraph.o obj/Node.o obj/VirtualNode.o obj/OperatorNode.o obj/Input.o obj/Add.o obj/Mult.o obj/Minus.o obj/SquareSum.o obj/Sigmoid.o obj/Parameter.o obj/Tensor.o -o xor_test

graph_test: obj/graph_test.o obj/Graph.o obj/Node.o
	g++ -std=c++11 obj/graph_test.o obj/Graph.o obj/Node.o -o graph_test

tensor_test: obj/tensor_test.o obj/Tensor.o
	g++ -std=c++11 obj/tensor_test.o obj/Tensor.o -o tensor_test

virtualGraph_test: obj/virtualGraph_test.o obj/Graph.o obj/VirtualGraph.o obj/ComputeGraph.o obj/Node.o obj/VirtualNode.o obj/BranchNode.o obj/MyBranch.o obj/LoopNode.o obj/MyLoop.o obj/OperatorNode.o obj/Add.o obj/Input.o obj/Mult.o obj/Minus.o obj/SquareSum.o obj/Sigmoid.o obj/Parameter.o obj/Tensor.o
	g++ -std=c++11 obj/virtualGraph_test.o obj/Graph.o obj/VirtualGraph.o obj/ComputeGraph.o obj/Node.o obj/VirtualNode.o obj/BranchNode.o obj/MyBranch.o obj/LoopNode.o obj/MyLoop.o obj/OperatorNode.o obj/Add.o obj/Input.o obj/Mult.o obj/Minus.o obj/SquareSum.o obj/Sigmoid.o obj/Parameter.o obj/Tensor.o -o virtualGraph_test

operatorNode_test: obj/operatorNode_test.o obj/ComputeGraph.o obj/Graph.o obj/Sigmoid.o obj/SquareSum.o obj/Add.o obj/Mult.o obj/Minus.o obj/Parameter.o obj/OperatorNode.o obj/Node.o obj/Tensor.o
	g++ -std=c++11 obj/operatorNode_test.o obj/ComputeGraph.o obj/Graph.o obj/Sigmoid.o obj/SquareSum.o obj/Add.o obj/Mult.o obj/Minus.o obj/Parameter.o obj/OperatorNode.o obj/Node.o obj/Tensor.o -o operatorNode_test

obj/xor_test.o: unit_test/xor_test.cpp
	g++ -std=c++11 -c unit_test/xor_test.cpp -o obj/xor_test.o
obj/operatorNode_test.o: unit_test/operatorNode_test.cpp
	g++ -std=c++11 -c unit_test/operatorNode_test.cpp -o obj/operatorNode_test.o
obj/virtualGraph_test.o: unit_test/virtualGraph_test.cpp
	g++ -std=c++11 -c unit_test/virtualGraph_test.cpp -o obj/virtualGraph_test.o
obj/graph_test.o: unit_test/graph_test.cpp
	g++ -std=c++11 -c unit_test/graph_test.cpp -o obj/graph_test.o
obj/tensor_test.o: unit_test/tensor_test.cpp
	g++ -std=c++11 -c unit_test/tensor_test.cpp -o obj/tensor_test.o

obj/MyLoop.o: unit_test/MyLoop.cpp
	g++ -std=c++11 -c unit_test/MyLoop.cpp -o obj/MyLoop.o
obj/MyBranch.o: unit_test/MyBranch.cpp
	g++ -std=c++11 -c unit_test/MyBranch.cpp -o obj/MyBranch.o

obj/SquareSum.o: src/op_node/SquareSum.cpp
	g++ -std=c++11 -c src/op_node/SquareSum.cpp -o obj/SquareSum.o
obj/Sigmoid.o: src/op_node/Sigmoid.cpp
	g++ -std=c++11 -c src/op_node/Sigmoid.cpp -o obj/Sigmoid.o
obj/Mult.o: src/op_node/Mult.cpp
	g++ -std=c++11 -c src/op_node/Mult.cpp -o obj/Mult.o
obj/Minus.o: src/op_node/Minus.cpp
	g++ -std=c++11 -c src/op_node/Minus.cpp -o obj/Minus.o
obj/Add.o: src/op_node/Add.cpp
	g++ -std=c++11 -c src/op_node/Add.cpp -o obj/Add.o
obj/Input.o: src/op_node/Input.cpp
	g++ -std=c++11 -c src/op_node/Input.cpp -o obj/Input.o
obj/Parameter.o: src/op_node/Parameter.cpp
	g++ -std=c++11 -c src/op_node/Parameter.cpp -o obj/Parameter.o

obj/ComputeGraph.o: src/ComputeGraph.cpp
	g++ -std=c++11 -c src/ComputeGraph.cpp -o obj/ComputeGraph.o
obj/VirtualGraph.o: src/VirtualGraph.cpp 
	g++ -std=c++11 -c src/VirtualGraph.cpp -o obj/VirtualGraph.o
obj/Graph.o: src/Graph.cpp
	g++ -std=c++11 -c src/Graph.cpp -o obj/Graph.o

obj/OperatorNode.o: src/OperatorNode.cpp 
	g++ -std=c++11 -c src/OperatorNode.cpp -o obj/OperatorNode.o
obj/VirtualNode.o: src/VirtualNode.cpp 
	g++ -std=c++11 -c src/VirtualNode.cpp -o obj/VirtualNode.o
obj/LoopNode.o: src/LoopNode.cpp
	g++ -std=c++11 -c src/LoopNode.cpp -o obj/LoopNode.o
obj/BranchNode.o: src/BranchNode.cpp
	g++ -std=c++11 -c src/BranchNode.cpp -o obj/BranchNode.o
obj/Node.o: src/Node.cpp
	g++ -std=c++11 -c src/Node.cpp -o obj/Node.o

obj/Tensor.o: src/Tensor.cpp
	g++ -std=c++11 -c src/Tensor.cpp -o obj/Tensor.o

clean:
	rm obj/*o 
