#include <random>
#include <iostream>
#include <cstdlib>
#include <time.h>
#include <string>

using namespace std;

#include<iostream>

using namespace std;

class BST
{
	struct node
	{
		int data;
		node* left;
		node* right;
		node( int _data ) {
			data = _data;
		}
		node();
	};

	node* root;

	node* makeEmpty( node* t ) {
		if( t == NULL )
			return NULL;
		{
			makeEmpty( t->left );
			makeEmpty( t->right );
			delete t;
		}
		return NULL;
	}

	node* insert( int x, node* t ) {
		node* tmp = new node(x);
		// create new node instance

		if( t == NULL ) {
			t = tmp;
			t->data = x;
			return t;
		}

		if( t->left != NULL || t->right != NULL ) {
			tmp->left = t->left;
			tmp->right = t->right;
		}
		if( x >= t->data )
			t->right = tmp;
		else
			t->left = tmp;
		return tmp;

	}

	node* findMin( node* t ) {
		while( t->left != NULL )
			t = t->left;
		return t;
	}

	node* findMax( node* t ) {
		while( t->right != NULL )
			t = t->right;
		return t;
	}

	node* remove( int x, node* t ) {
		node* temp;
		if( t == NULL )
			return NULL;
		else if( x < t->data )
			t->left = remove( x, t->left );
		else if( x > t->data )
			t->right = remove( x, t->right );
		else if( t->left && t->right ) {
			temp = findMin( t->right );
			t->data = temp->data;
			t->right = remove( t->data, t->right );
		}
		else {
			temp = t;
			if( t->left == NULL )
				t = t->right;
			else if( t->right == NULL )
				t = t->left;
			delete temp;
		}

		return t;
	}

	void inorder( node* t ) {
		if( t == NULL )
			return;
		inorder( t->left );
		cout << t->data << " ";
		inorder( t->right );
	}

	node* find( node* t, int x ) {
		if( t == NULL )
			return NULL;
		else if( x < t->data )
			return find( t->left, x );
		else if( x > t->data )
			return find( t->right, x );
		else
			return t;
	}

public:
	BST() {
		root = NULL;
	}

	~BST() {
		root = makeEmpty( root );
	}

	void insert( int x ) {
		root = insert( x, root );
	}

	void remove( int x ) {
		root = remove( x, root );
	}

	void display() {
		inorder( root );
		cout << endl;
	}

	void search( int x ) {
		root = find( root, x );
		cout << root->data << endl;
	}
};

class Generator {
public:
	static void generate( BST &bst, int number, int maxV ) {
		std::random_device rd{};

		std::mt19937 engine{ rd() };

		std::uniform_int_distribution<int> dis( 1, maxV );

		for( unsigned int i = 0; i < number; i++ )
			bst.insert( dis( engine ) );
	}
};

int main() {
	BST bst;
	Generator::generate( bst, 10, 100 );
	cout << "Empty BST" << endl;
	system( "pause" );
}
